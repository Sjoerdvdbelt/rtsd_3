# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework

# Include any dependencies generated for this target.
include CMakeFiles/jiwy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/jiwy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jiwy.dir/flags.make

CMakeFiles/jiwy.dir/jiwy_main.cpp.o: CMakeFiles/jiwy.dir/flags.make
CMakeFiles/jiwy.dir/jiwy_main.cpp.o: jiwy_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/jiwy.dir/jiwy_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jiwy.dir/jiwy_main.cpp.o -c /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/jiwy_main.cpp

CMakeFiles/jiwy.dir/jiwy_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jiwy.dir/jiwy_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/jiwy_main.cpp > CMakeFiles/jiwy.dir/jiwy_main.cpp.i

CMakeFiles/jiwy.dir/jiwy_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jiwy.dir/jiwy_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/jiwy_main.cpp -o CMakeFiles/jiwy.dir/jiwy_main.cpp.s

CMakeFiles/jiwy.dir/Controller.cpp.o: CMakeFiles/jiwy.dir/flags.make
CMakeFiles/jiwy.dir/Controller.cpp.o: Controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/jiwy.dir/Controller.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jiwy.dir/Controller.cpp.o -c /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/Controller.cpp

CMakeFiles/jiwy.dir/Controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jiwy.dir/Controller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/Controller.cpp > CMakeFiles/jiwy.dir/Controller.cpp.i

CMakeFiles/jiwy.dir/Controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jiwy.dir/Controller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/Controller.cpp -o CMakeFiles/jiwy.dir/Controller.cpp.s

CMakeFiles/jiwy.dir/common/EulerAngles.cpp.o: CMakeFiles/jiwy.dir/flags.make
CMakeFiles/jiwy.dir/common/EulerAngles.cpp.o: common/EulerAngles.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/jiwy.dir/common/EulerAngles.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jiwy.dir/common/EulerAngles.cpp.o -c /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/EulerAngles.cpp

CMakeFiles/jiwy.dir/common/EulerAngles.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jiwy.dir/common/EulerAngles.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/EulerAngles.cpp > CMakeFiles/jiwy.dir/common/EulerAngles.cpp.i

CMakeFiles/jiwy.dir/common/EulerAngles.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jiwy.dir/common/EulerAngles.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/EulerAngles.cpp -o CMakeFiles/jiwy.dir/common/EulerAngles.cpp.s

CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.o: CMakeFiles/jiwy.dir/flags.make
CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.o: common/MotionProfiles.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.o -c /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/MotionProfiles.cpp

CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/MotionProfiles.cpp > CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.i

CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/MotionProfiles.cpp -o CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.s

CMakeFiles/jiwy.dir/common/xxfuncs.cpp.o: CMakeFiles/jiwy.dir/flags.make
CMakeFiles/jiwy.dir/common/xxfuncs.cpp.o: common/xxfuncs.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/jiwy.dir/common/xxfuncs.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jiwy.dir/common/xxfuncs.cpp.o -c /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxfuncs.cpp

CMakeFiles/jiwy.dir/common/xxfuncs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jiwy.dir/common/xxfuncs.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxfuncs.cpp > CMakeFiles/jiwy.dir/common/xxfuncs.cpp.i

CMakeFiles/jiwy.dir/common/xxfuncs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jiwy.dir/common/xxfuncs.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxfuncs.cpp -o CMakeFiles/jiwy.dir/common/xxfuncs.cpp.s

CMakeFiles/jiwy.dir/common/xxinteg.cpp.o: CMakeFiles/jiwy.dir/flags.make
CMakeFiles/jiwy.dir/common/xxinteg.cpp.o: common/xxinteg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/jiwy.dir/common/xxinteg.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jiwy.dir/common/xxinteg.cpp.o -c /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxinteg.cpp

CMakeFiles/jiwy.dir/common/xxinteg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jiwy.dir/common/xxinteg.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxinteg.cpp > CMakeFiles/jiwy.dir/common/xxinteg.cpp.i

CMakeFiles/jiwy.dir/common/xxinteg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jiwy.dir/common/xxinteg.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxinteg.cpp -o CMakeFiles/jiwy.dir/common/xxinteg.cpp.s

CMakeFiles/jiwy.dir/common/xxinverse.cpp.o: CMakeFiles/jiwy.dir/flags.make
CMakeFiles/jiwy.dir/common/xxinverse.cpp.o: common/xxinverse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/jiwy.dir/common/xxinverse.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jiwy.dir/common/xxinverse.cpp.o -c /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxinverse.cpp

CMakeFiles/jiwy.dir/common/xxinverse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jiwy.dir/common/xxinverse.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxinverse.cpp > CMakeFiles/jiwy.dir/common/xxinverse.cpp.i

CMakeFiles/jiwy.dir/common/xxinverse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jiwy.dir/common/xxinverse.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxinverse.cpp -o CMakeFiles/jiwy.dir/common/xxinverse.cpp.s

CMakeFiles/jiwy.dir/common/xxmatrix.cpp.o: CMakeFiles/jiwy.dir/flags.make
CMakeFiles/jiwy.dir/common/xxmatrix.cpp.o: common/xxmatrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/jiwy.dir/common/xxmatrix.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jiwy.dir/common/xxmatrix.cpp.o -c /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxmatrix.cpp

CMakeFiles/jiwy.dir/common/xxmatrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jiwy.dir/common/xxmatrix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxmatrix.cpp > CMakeFiles/jiwy.dir/common/xxmatrix.cpp.i

CMakeFiles/jiwy.dir/common/xxmatrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jiwy.dir/common/xxmatrix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/common/xxmatrix.cpp -o CMakeFiles/jiwy.dir/common/xxmatrix.cpp.s

# Object files for target jiwy
jiwy_OBJECTS = \
"CMakeFiles/jiwy.dir/jiwy_main.cpp.o" \
"CMakeFiles/jiwy.dir/Controller.cpp.o" \
"CMakeFiles/jiwy.dir/common/EulerAngles.cpp.o" \
"CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.o" \
"CMakeFiles/jiwy.dir/common/xxfuncs.cpp.o" \
"CMakeFiles/jiwy.dir/common/xxinteg.cpp.o" \
"CMakeFiles/jiwy.dir/common/xxinverse.cpp.o" \
"CMakeFiles/jiwy.dir/common/xxmatrix.cpp.o"

# External object files for target jiwy
jiwy_EXTERNAL_OBJECTS =

jiwy: CMakeFiles/jiwy.dir/jiwy_main.cpp.o
jiwy: CMakeFiles/jiwy.dir/Controller.cpp.o
jiwy: CMakeFiles/jiwy.dir/common/EulerAngles.cpp.o
jiwy: CMakeFiles/jiwy.dir/common/MotionProfiles.cpp.o
jiwy: CMakeFiles/jiwy.dir/common/xxfuncs.cpp.o
jiwy: CMakeFiles/jiwy.dir/common/xxinteg.cpp.o
jiwy: CMakeFiles/jiwy.dir/common/xxinverse.cpp.o
jiwy: CMakeFiles/jiwy.dir/common/xxmatrix.cpp.o
jiwy: CMakeFiles/jiwy.dir/build.make
jiwy: libclass_libaries.a
jiwy: /usr/xenomai/lib/xenomai/bootstrap.o
jiwy: CMakeFiles/jiwy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable jiwy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jiwy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jiwy.dir/build: jiwy

.PHONY : CMakeFiles/jiwy.dir/build

CMakeFiles/jiwy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/jiwy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/jiwy.dir/clean

CMakeFiles/jiwy.dir/depend:
	cd /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework /home/rtsd_group_01/code/rtsd_assignment_3/xenomai-ros2-framework/CMakeFiles/jiwy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/jiwy.dir/depend

