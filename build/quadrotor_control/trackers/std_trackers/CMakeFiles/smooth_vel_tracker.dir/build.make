# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/aarow/ros/vio_swarm_groundstation_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aarow/ros/vio_swarm_groundstation_ws/build

# Include any dependencies generated for this target.
include quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/depend.make

# Include the progress variables for this target.
include quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/progress.make

# Include the compile flags for this target's objects.
include quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/flags.make

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o: quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/flags.make
quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o: /home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/trackers/std_trackers/src/smooth_vel_tracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aarow/ros/vio_swarm_groundstation_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o"
	cd /home/aarow/ros/vio_swarm_groundstation_ws/build/quadrotor_control/trackers/std_trackers && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o -c /home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/trackers/std_trackers/src/smooth_vel_tracker.cpp

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.i"
	cd /home/aarow/ros/vio_swarm_groundstation_ws/build/quadrotor_control/trackers/std_trackers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/trackers/std_trackers/src/smooth_vel_tracker.cpp > CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.i

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.s"
	cd /home/aarow/ros/vio_swarm_groundstation_ws/build/quadrotor_control/trackers/std_trackers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/trackers/std_trackers/src/smooth_vel_tracker.cpp -o CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.s

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o.requires:

.PHONY : quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o.requires

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o.provides: quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o.requires
	$(MAKE) -f quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/build.make quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o.provides.build
.PHONY : quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o.provides

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o.provides.build: quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o


# Object files for target smooth_vel_tracker
smooth_vel_tracker_OBJECTS = \
"CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o"

# External object files for target smooth_vel_tracker
smooth_vel_tracker_EXTERNAL_OBJECTS =

/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/build.make
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libinitial_conditions.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libtf.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libtf2_ros.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libactionlib.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libmessage_filters.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libtf2.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libtrackers_manager.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libnodeletlib.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libbondcpp.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libroscpp.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libclass_loader.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/libPocoFoundation.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/librosconsole.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libroslib.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/librospack.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libencode_msgs.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libdecode_msgs.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/librostime.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so: quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aarow/ros/vio_swarm_groundstation_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so"
	cd /home/aarow/ros/vio_swarm_groundstation_ws/build/quadrotor_control/trackers/std_trackers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smooth_vel_tracker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/build: /home/aarow/ros/vio_swarm_groundstation_ws/devel/lib/libsmooth_vel_tracker.so

.PHONY : quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/build

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/requires: quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/src/smooth_vel_tracker.cpp.o.requires

.PHONY : quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/requires

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/clean:
	cd /home/aarow/ros/vio_swarm_groundstation_ws/build/quadrotor_control/trackers/std_trackers && $(CMAKE_COMMAND) -P CMakeFiles/smooth_vel_tracker.dir/cmake_clean.cmake
.PHONY : quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/clean

quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/depend:
	cd /home/aarow/ros/vio_swarm_groundstation_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aarow/ros/vio_swarm_groundstation_ws/src /home/aarow/ros/vio_swarm_groundstation_ws/src/quadrotor_control/trackers/std_trackers /home/aarow/ros/vio_swarm_groundstation_ws/build /home/aarow/ros/vio_swarm_groundstation_ws/build/quadrotor_control/trackers/std_trackers /home/aarow/ros/vio_swarm_groundstation_ws/build/quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : quadrotor_control/trackers/std_trackers/CMakeFiles/smooth_vel_tracker.dir/depend

