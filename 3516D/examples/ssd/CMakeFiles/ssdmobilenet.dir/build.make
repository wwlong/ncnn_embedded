# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/deepglint/workspace/github_work/ncnn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/deepglint/workspace/github_work/ncnn/3516D

# Include any dependencies generated for this target.
include examples/ssd/CMakeFiles/ssdmobilenet.dir/depend.make

# Include the progress variables for this target.
include examples/ssd/CMakeFiles/ssdmobilenet.dir/progress.make

# Include the compile flags for this target's objects.
include examples/ssd/CMakeFiles/ssdmobilenet.dir/flags.make

examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj: examples/ssd/CMakeFiles/ssdmobilenet.dir/flags.make
examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj: ../examples/ssd/ssdmobilenet.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deepglint/workspace/github_work/ncnn/3516D/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj"
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples/ssd && /home/deepglint/workspace/tool_chain/3_3516av100_arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj -c /home/deepglint/workspace/github_work/ncnn/examples/ssd/ssdmobilenet.cpp

examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.i"
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples/ssd && /home/deepglint/workspace/tool_chain/3_3516av100_arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deepglint/workspace/github_work/ncnn/examples/ssd/ssdmobilenet.cpp > CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.i

examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.s"
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples/ssd && /home/deepglint/workspace/tool_chain/3_3516av100_arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deepglint/workspace/github_work/ncnn/examples/ssd/ssdmobilenet.cpp -o CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.s

examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj.requires:
.PHONY : examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj.requires

examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj.provides: examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj.requires
	$(MAKE) -f examples/ssd/CMakeFiles/ssdmobilenet.dir/build.make examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj.provides.build
.PHONY : examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj.provides

examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj.provides.build: examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj

# Object files for target ssdmobilenet
ssdmobilenet_OBJECTS = \
"CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj"

# External object files for target ssdmobilenet
ssdmobilenet_EXTERNAL_OBJECTS =

examples/ssd/ssdmobilenet: examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj
examples/ssd/ssdmobilenet: examples/ssd/CMakeFiles/ssdmobilenet.dir/build.make
examples/ssd/ssdmobilenet: src/libncnn.a
examples/ssd/ssdmobilenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_core.so
examples/ssd/ssdmobilenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_highgui.so
examples/ssd/ssdmobilenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_imgproc.so
examples/ssd/ssdmobilenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_core.so
examples/ssd/ssdmobilenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_highgui.so
examples/ssd/ssdmobilenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_imgproc.so
examples/ssd/ssdmobilenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_core.so
examples/ssd/ssdmobilenet: examples/ssd/CMakeFiles/ssdmobilenet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ssdmobilenet"
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples/ssd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ssdmobilenet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/ssd/CMakeFiles/ssdmobilenet.dir/build: examples/ssd/ssdmobilenet
.PHONY : examples/ssd/CMakeFiles/ssdmobilenet.dir/build

examples/ssd/CMakeFiles/ssdmobilenet.dir/requires: examples/ssd/CMakeFiles/ssdmobilenet.dir/ssdmobilenet.cpp.obj.requires
.PHONY : examples/ssd/CMakeFiles/ssdmobilenet.dir/requires

examples/ssd/CMakeFiles/ssdmobilenet.dir/clean:
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples/ssd && $(CMAKE_COMMAND) -P CMakeFiles/ssdmobilenet.dir/cmake_clean.cmake
.PHONY : examples/ssd/CMakeFiles/ssdmobilenet.dir/clean

examples/ssd/CMakeFiles/ssdmobilenet.dir/depend:
	cd /home/deepglint/workspace/github_work/ncnn/3516D && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deepglint/workspace/github_work/ncnn /home/deepglint/workspace/github_work/ncnn/examples/ssd /home/deepglint/workspace/github_work/ncnn/3516D /home/deepglint/workspace/github_work/ncnn/3516D/examples/ssd /home/deepglint/workspace/github_work/ncnn/3516D/examples/ssd/CMakeFiles/ssdmobilenet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/ssd/CMakeFiles/ssdmobilenet.dir/depend

