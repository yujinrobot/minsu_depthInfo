# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/kobuki/minsu/minsu_depthInfo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/kobuki/minsu/minsu_depthInfo/build

# Include any dependencies generated for this target.
include src/CMakeFiles/test_depthInfo.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/test_depthInfo.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/test_depthInfo.dir/flags.make

src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: src/CMakeFiles/test_depthInfo.dir/flags.make
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: ../src/test_depthInfo.cpp
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: ../manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/share/roslang/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/share/roscpp/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/stacks/vision_opencv/opencv2/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/stacks/vision_opencv/cv_bridge/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/share/ros/core/rosbuild/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/share/roslib/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/stacks/pluginlib/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/share/message_filters/manifest.xml
src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o: /opt/ros/fuerte/stacks/image_common/image_transport/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /opt/kobuki/minsu/minsu_depthInfo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o"
	cd /opt/kobuki/minsu/minsu_depthInfo/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/test_depthInfo.dir/test_depthInfo.o -c /opt/kobuki/minsu/minsu_depthInfo/src/test_depthInfo.cpp

src/CMakeFiles/test_depthInfo.dir/test_depthInfo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_depthInfo.dir/test_depthInfo.i"
	cd /opt/kobuki/minsu/minsu_depthInfo/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /opt/kobuki/minsu/minsu_depthInfo/src/test_depthInfo.cpp > CMakeFiles/test_depthInfo.dir/test_depthInfo.i

src/CMakeFiles/test_depthInfo.dir/test_depthInfo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_depthInfo.dir/test_depthInfo.s"
	cd /opt/kobuki/minsu/minsu_depthInfo/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /opt/kobuki/minsu/minsu_depthInfo/src/test_depthInfo.cpp -o CMakeFiles/test_depthInfo.dir/test_depthInfo.s

src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o.requires:
.PHONY : src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o.requires

src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o.provides: src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o.requires
	$(MAKE) -f src/CMakeFiles/test_depthInfo.dir/build.make src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o.provides.build
.PHONY : src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o.provides

src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o.provides.build: src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o

# Object files for target test_depthInfo
test_depthInfo_OBJECTS = \
"CMakeFiles/test_depthInfo.dir/test_depthInfo.o"

# External object files for target test_depthInfo
test_depthInfo_EXTERNAL_OBJECTS =

../bin/test_depthInfo: src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o
../bin/test_depthInfo: src/CMakeFiles/test_depthInfo.dir/build.make
../bin/test_depthInfo: src/CMakeFiles/test_depthInfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/test_depthInfo"
	cd /opt/kobuki/minsu/minsu_depthInfo/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_depthInfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/test_depthInfo.dir/build: ../bin/test_depthInfo
.PHONY : src/CMakeFiles/test_depthInfo.dir/build

src/CMakeFiles/test_depthInfo.dir/requires: src/CMakeFiles/test_depthInfo.dir/test_depthInfo.o.requires
.PHONY : src/CMakeFiles/test_depthInfo.dir/requires

src/CMakeFiles/test_depthInfo.dir/clean:
	cd /opt/kobuki/minsu/minsu_depthInfo/build/src && $(CMAKE_COMMAND) -P CMakeFiles/test_depthInfo.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/test_depthInfo.dir/clean

src/CMakeFiles/test_depthInfo.dir/depend:
	cd /opt/kobuki/minsu/minsu_depthInfo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/kobuki/minsu/minsu_depthInfo /opt/kobuki/minsu/minsu_depthInfo/src /opt/kobuki/minsu/minsu_depthInfo/build /opt/kobuki/minsu/minsu_depthInfo/build/src /opt/kobuki/minsu/minsu_depthInfo/build/src/CMakeFiles/test_depthInfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/test_depthInfo.dir/depend

