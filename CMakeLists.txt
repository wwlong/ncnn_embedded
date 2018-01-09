
if(CMAKE_TOOLCHAIN_FILE)
set(LIBRARY_OUTPUT_PATH_ROOT ${CMAKE_BINARY_DIR} CACHE PATH "root for library output, set this to change where android libs are compiled to")
# get absolute path, but get_filename_component ABSOLUTE only refer with source dir, so find_file here :(
get_filename_component(CMAKE_TOOLCHAIN_FILE_NAME ${CMAKE_TOOLCHAIN_FILE} NAME)
find_file(CMAKE_TOOLCHAIN_FILE ${CMAKE_TOOLCHAIN_FILE_NAME} PATHS ${CMAKE_SOURCE_DIR} NO_DEFAULT_PATH)
message(STATUS "CMAKE_TOOLCHAIN_FILE = ${CMAKE_TOOLCHAIN_FILE}")
endif()

if(NOT DEFINED CMAKE_INSTALL_PREFIX)
set(CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/install" CACHE PATH "Installation Directory")
endif()
message(STATUS "CMAKE_INSTALL_PREFIX = ${CMAKE_INSTALL_PREFIX}")

project(ncnn)

cmake_minimum_required(VERSION 2.8.10)

# set(CMAKE_BUILD_TYPE debug)
# set(CMAKE_BUILD_TYPE relwithdebinfo)
set(CMAKE_BUILD_TYPE release)

option(NCNN_OPENMP "openmp support" ON)
option(NCNN_STDIO "load model from external file" ON)
option(NCNN_STRING "plain and verbose string" ON)
option(NCNN_OPENCV "minimal opencv structure emulation" OFF)

if(NCNN_OPENMP)
    find_package(OpenMP)
    if(OpenMP_CXX_FOUND OR OPENMP_FOUND)
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    endif()
endif()

add_definitions(-Wall -Wextra -Wno-unused-function)

add_definitions(-fPIC)
add_definitions(-Ofast)

add_definitions(-ffast-math)
# add_definitions(-march=native)

# add_definitions(-flto)

add_definitions(-fvisibility=hidden -fvisibility-inlines-hidden)
set(ARM-LINUX True) #自定义的名字
#set(CMAKE_C_COMPILER "/home/deepglint/workspace/tool_chain/2_3516AV100_arm-hisiv400-linux/arm-hisiv400-linux/bin/arm-hisiv400-linux-gnueabi-gcc") #编译工具所在路径
#set(CMAKE_CXX_COMPILER "/home/deepglint/workspace/tool_chain/2_3516AV100_arm-hisiv400-linux/arm-hisiv400-linux/bin/arm-hisiv400-linux-gnueabi-g++") #编译工具所在路径
if(ARM-LINUX) 
    list(APPEND CMAKE_C_FLAGS " -Wall -fPIC -fexceptions") #arm-hisiv400-linux-gnueabi-g++
    #list(APPEND CMAKE_C_FLAGS " marm -mfloat-abi-softfp -mfpu=neon")
    list(APPEND CMAKE_C_FLAGS " -mfpu=neon -lpthread")
    list(APPEND CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -Wno-reorder -Wno-sign-compare -std=c++11")
    string(REGEX REPLACE ";" " "CMAKE_C_FLAGS ${CMAKE_C_FLAGS})
    string(REGEX REPLACE ";" " "CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS})
endif()

if(ANDROID)
    # disable shared library on android
    set_property(GLOBAL PROPERTY TARGET_SUPPORTS_SHARED_LIBS FALSE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti -fno-exceptions")
elseif(ARM-LINUX) 
    # disable share library on arm-LINUX
    set_property(GLOBAL PROPERTY TARGET_SUPPORTS_SHARED_LIBS FALSE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti -fno-exceptions")
elseif(IOS)
    # disable shared library on xcode ios
    set_property(GLOBAL PROPERTY TARGET_SUPPORTS_SHARED_LIBS FALSE)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti -fno-exceptions")
endif()

##############################################

add_subdirectory(examples)
add_subdirectory(src)
if(NOT ANDROID AND NOT IOS)
    #add_subdirectory(tools)
endif()
