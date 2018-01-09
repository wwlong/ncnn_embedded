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
include examples/CMakeFiles/squeezenet.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/squeezenet.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/squeezenet.dir/flags.make

examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj: examples/CMakeFiles/squeezenet.dir/flags.make
examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj: ../examples/squeezenet.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deepglint/workspace/github_work/ncnn/3516D/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj"
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples && /home/deepglint/workspace/tool_chain/3_3516av100_arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/squeezenet.dir/squeezenet.cpp.obj -c /home/deepglint/workspace/github_work/ncnn/examples/squeezenet.cpp

examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/squeezenet.dir/squeezenet.cpp.i"
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples && /home/deepglint/workspace/tool_chain/3_3516av100_arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deepglint/workspace/github_work/ncnn/examples/squeezenet.cpp > CMakeFiles/squeezenet.dir/squeezenet.cpp.i

examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/squeezenet.dir/squeezenet.cpp.s"
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples && /home/deepglint/workspace/tool_chain/3_3516av100_arm-hisiv300-linux/bin/arm-hisiv300-linux-uclibcgnueabi-g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deepglint/workspace/github_work/ncnn/examples/squeezenet.cpp -o CMakeFiles/squeezenet.dir/squeezenet.cpp.s

examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj.requires:
.PHONY : examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj.requires

examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj.provides: examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj.requires
	$(MAKE) -f examples/CMakeFiles/squeezenet.dir/build.make examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj.provides.build
.PHONY : examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj.provides

examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj.provides.build: examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj

# Object files for target squeezenet
squeezenet_OBJECTS = \
"CMakeFiles/squeezenet.dir/squeezenet.cpp.obj"

# External object files for target squeezenet
squeezenet_EXTERNAL_OBJECTS =

examples/squeezenet: examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj
examples/squeezenet: examples/CMakeFiles/squeezenet.dir/build.make
examples/squeezenet: src/libncnn.a
examples/squeezenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_core.so
examples/squeezenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_highgui.so
examples/squeezenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_imgproc.so
examples/squeezenet: /home/deepglint/workspace/github_work/opencv-2.4.13/release_hisiv300/lib/libopencv_core.so
examples/squeezenet: examples/CMakeFiles/squeezenet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable squeezenet"
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/squeezenet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/squeezenet.dir/build: examples/squeezenet
.PHONY : examples/CMakeFiles/squeezenet.dir/build

examples/CMakeFiles/squeezenet.dir/requires: examples/CMakeFiles/squeezenet.dir/squeezenet.cpp.obj.requires
.PHONY : examples/CMakeFiles/squeezenet.dir/requires

examples/CMakeFiles/squeezenet.dir/clean:
	cd /home/deepglint/workspace/github_work/ncnn/3516D/examples && $(CMAKE_COMMAND) -P CMakeFiles/squeezenet.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/squeezenet.dir/clean

examples/CMakeFiles/squeezenet.dir/depend:
	cd /home/deepglint/workspace/github_work/ncnn/3516D && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deepglint/workspace/github_work/ncnn /home/deepglint/workspace/github_work/ncnn/examples /home/deepglint/workspace/github_work/ncnn/3516D /home/deepglint/workspace/github_work/ncnn/3516D/examples /home/deepglint/workspace/github_work/ncnn/3516D/examples/CMakeFiles/squeezenet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/squeezenet.dir/depend
