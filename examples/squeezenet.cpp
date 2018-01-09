#include <stdio.h>  
#include <algorithm>  
#include <vector>  
#include <opencv2/core/core.hpp>  
#include <opencv2/highgui/highgui.hpp>  
using namespace std;  
using namespace cv;  
#include "net.h"  
    
static int detect_squeezenet(const cv::Mat& bgr, std::vector<float>& cls_scores)  
{  
    ncnn::Net squeezenet;  
    squeezenet.load_param("squeezenet_v1.1.param");  
    squeezenet.load_model("squeezenet_v1.1.bin");  
    
    ncnn::Mat in = ncnn::Mat::from_pixels_resize(bgr.data, ncnn::Mat::PIXEL_BGR, bgr.cols, bgr.rows, 227, 227);  
    
    const float mean_vals[3] = {104.f, 117.f, 123.f};  
    in.substract_mean_normalize(mean_vals, 0);  
    
    ncnn::Extractor ex = squeezenet.create_extractor();  
    ex.set_light_mode(true);  
    
    ex.input("data", in);  
    
    ncnn::Mat out;  
    ex.extract("prob", out);  
    
    cls_scores.resize(out.c);  
    for (int j=0; j<out.c; j++)  
    {  
        const float* prob = out.data + out.cstep * j;  
        cls_scores[j] = prob[0];  
    }  
    
    return 0;  
}  
    
static int print_topk(const std::vector<float>& cls_scores, int topk, vector<int>& index_result, vector<float>& score_result)  
{  
    // partial sort topk with index  
    int size = cls_scores.size();  
    std::vector< std::pair<float, int> > vec;  
    vec.resize(size);  
    for (int i=0; i<size; i++)  
    {  
        vec[i] = std::make_pair(cls_scores[i], i);  
    }  
    
    std::partial_sort(vec.begin(), vec.begin() + topk, vec.end(), std::greater< std::pair<float, int> >());  
    
    // print topk and score  
    for (int i=0; i<topk; i++)  
    {  
        float score = vec[i].first;  
        int index = vec[i].second;  
        index_result.push_back(index);  
        score_result.push_back(score);  
    
        //fprintf(stderr, "%d = %f\n", index, score);  
    }  
    
    return 0;  
}  
    
static int load_labels(string path, vector<string>& labels)  
{  
    FILE* fp = fopen(path.c_str(), "r");  
    
    while (!feof(fp))  
    {  
        char str[1024];  
        fgets(str, 1024, fp);  //¶ÁÈ¡Ò»ÐÐ  
        string str_s(str);  
    
        if (str_s.length() > 0)  
        {  
            for (int i = 0; i < str_s.length(); i++)  
            {  
                if (str_s[i] == ' ')  
                {  
                    string strr = str_s.substr(i, str_s.length() - i - 1);  
                    labels.push_back(strr);  
                    i = str_s.length();  
                }  
            }  
        }  
    }  
    return 0;  
}  
    
    
int main(int argc, char** argv)  
{  
    const char* imagepath = argv[1];  
    vector<string> labels;  
    printf("hahaha\n");
    load_labels("synset_words.txt", labels);  
    printf("hahaha\n");
    cv::Mat m = cv::imread(imagepath, CV_LOAD_IMAGE_COLOR);  
    if (m.empty())  
    {  
        fprintf(stderr, "cv::imread %s failed\n", imagepath);  
        return -1;  
    }  
    
    std::vector<float> cls_scores;  
    detect_squeezenet(m, cls_scores);  
    
    vector<int> index;  
    vector<float> score;  
    print_topk(cls_scores, 3, index, score);  
    
    
    for (int i = 0; i < index.size(); i++)  
    {  
        cv::putText(m, labels[index[i]], Point(50, 50 + 30 * i), CV_FONT_HERSHEY_SIMPLEX, 1.2, Scalar(0, 100, 200), 2, 8);  
    }  
    
    imshow("m", m);  
    imwrite("test_result.jpg", m);  
    waitKey(0);  
    
    return 0;  
}  
