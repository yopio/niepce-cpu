# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_SOURCE_DIR = /home/yopio/workspace/niepce

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yopio/workspace/niepce/build

# Include any dependencies generated for this target.
include geometries/CMakeFiles/Geometries.dir/depend.make

# Include the progress variables for this target.
include geometries/CMakeFiles/Geometries.dir/progress.make

# Include the compile flags for this target's objects.
include geometries/CMakeFiles/Geometries.dir/flags.make

geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o: ../geometries/boundingbox2.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/boundingbox2.cc.o -c /home/yopio/workspace/niepce/geometries/boundingbox2.cc

geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/boundingbox2.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/boundingbox2.cc > CMakeFiles/Geometries.dir/boundingbox2.cc.i

geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/boundingbox2.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/boundingbox2.cc -o CMakeFiles/Geometries.dir/boundingbox2.cc.s

geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o.requires

geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o.provides: geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o.provides

geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o


geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o: ../geometries/boundingbox3.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/boundingbox3.cc.o -c /home/yopio/workspace/niepce/geometries/boundingbox3.cc

geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/boundingbox3.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/boundingbox3.cc > CMakeFiles/Geometries.dir/boundingbox3.cc.i

geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/boundingbox3.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/boundingbox3.cc -o CMakeFiles/Geometries.dir/boundingbox3.cc.s

geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o.requires

geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o.provides: geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o.provides

geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o


geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o: ../geometries/matrix4x4.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/matrix4x4.cc.o -c /home/yopio/workspace/niepce/geometries/matrix4x4.cc

geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/matrix4x4.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/matrix4x4.cc > CMakeFiles/Geometries.dir/matrix4x4.cc.i

geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/matrix4x4.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/matrix4x4.cc -o CMakeFiles/Geometries.dir/matrix4x4.cc.s

geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o.requires

geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o.provides: geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o.provides

geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o


geometries/CMakeFiles/Geometries.dir/normal3.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/normal3.cc.o: ../geometries/normal3.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object geometries/CMakeFiles/Geometries.dir/normal3.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/normal3.cc.o -c /home/yopio/workspace/niepce/geometries/normal3.cc

geometries/CMakeFiles/Geometries.dir/normal3.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/normal3.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/normal3.cc > CMakeFiles/Geometries.dir/normal3.cc.i

geometries/CMakeFiles/Geometries.dir/normal3.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/normal3.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/normal3.cc -o CMakeFiles/Geometries.dir/normal3.cc.s

geometries/CMakeFiles/Geometries.dir/normal3.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/normal3.cc.o.requires

geometries/CMakeFiles/Geometries.dir/normal3.cc.o.provides: geometries/CMakeFiles/Geometries.dir/normal3.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/normal3.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/normal3.cc.o.provides

geometries/CMakeFiles/Geometries.dir/normal3.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/normal3.cc.o


geometries/CMakeFiles/Geometries.dir/point2.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/point2.cc.o: ../geometries/point2.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object geometries/CMakeFiles/Geometries.dir/point2.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/point2.cc.o -c /home/yopio/workspace/niepce/geometries/point2.cc

geometries/CMakeFiles/Geometries.dir/point2.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/point2.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/point2.cc > CMakeFiles/Geometries.dir/point2.cc.i

geometries/CMakeFiles/Geometries.dir/point2.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/point2.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/point2.cc -o CMakeFiles/Geometries.dir/point2.cc.s

geometries/CMakeFiles/Geometries.dir/point2.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/point2.cc.o.requires

geometries/CMakeFiles/Geometries.dir/point2.cc.o.provides: geometries/CMakeFiles/Geometries.dir/point2.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/point2.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/point2.cc.o.provides

geometries/CMakeFiles/Geometries.dir/point2.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/point2.cc.o


geometries/CMakeFiles/Geometries.dir/point3.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/point3.cc.o: ../geometries/point3.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object geometries/CMakeFiles/Geometries.dir/point3.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/point3.cc.o -c /home/yopio/workspace/niepce/geometries/point3.cc

geometries/CMakeFiles/Geometries.dir/point3.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/point3.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/point3.cc > CMakeFiles/Geometries.dir/point3.cc.i

geometries/CMakeFiles/Geometries.dir/point3.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/point3.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/point3.cc -o CMakeFiles/Geometries.dir/point3.cc.s

geometries/CMakeFiles/Geometries.dir/point3.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/point3.cc.o.requires

geometries/CMakeFiles/Geometries.dir/point3.cc.o.provides: geometries/CMakeFiles/Geometries.dir/point3.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/point3.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/point3.cc.o.provides

geometries/CMakeFiles/Geometries.dir/point3.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/point3.cc.o


geometries/CMakeFiles/Geometries.dir/point4.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/point4.cc.o: ../geometries/point4.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object geometries/CMakeFiles/Geometries.dir/point4.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/point4.cc.o -c /home/yopio/workspace/niepce/geometries/point4.cc

geometries/CMakeFiles/Geometries.dir/point4.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/point4.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/point4.cc > CMakeFiles/Geometries.dir/point4.cc.i

geometries/CMakeFiles/Geometries.dir/point4.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/point4.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/point4.cc -o CMakeFiles/Geometries.dir/point4.cc.s

geometries/CMakeFiles/Geometries.dir/point4.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/point4.cc.o.requires

geometries/CMakeFiles/Geometries.dir/point4.cc.o.provides: geometries/CMakeFiles/Geometries.dir/point4.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/point4.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/point4.cc.o.provides

geometries/CMakeFiles/Geometries.dir/point4.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/point4.cc.o


geometries/CMakeFiles/Geometries.dir/ray.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/ray.cc.o: ../geometries/ray.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object geometries/CMakeFiles/Geometries.dir/ray.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/ray.cc.o -c /home/yopio/workspace/niepce/geometries/ray.cc

geometries/CMakeFiles/Geometries.dir/ray.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/ray.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/ray.cc > CMakeFiles/Geometries.dir/ray.cc.i

geometries/CMakeFiles/Geometries.dir/ray.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/ray.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/ray.cc -o CMakeFiles/Geometries.dir/ray.cc.s

geometries/CMakeFiles/Geometries.dir/ray.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/ray.cc.o.requires

geometries/CMakeFiles/Geometries.dir/ray.cc.o.provides: geometries/CMakeFiles/Geometries.dir/ray.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/ray.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/ray.cc.o.provides

geometries/CMakeFiles/Geometries.dir/ray.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/ray.cc.o


geometries/CMakeFiles/Geometries.dir/vector2.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/vector2.cc.o: ../geometries/vector2.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object geometries/CMakeFiles/Geometries.dir/vector2.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/vector2.cc.o -c /home/yopio/workspace/niepce/geometries/vector2.cc

geometries/CMakeFiles/Geometries.dir/vector2.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/vector2.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/vector2.cc > CMakeFiles/Geometries.dir/vector2.cc.i

geometries/CMakeFiles/Geometries.dir/vector2.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/vector2.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/vector2.cc -o CMakeFiles/Geometries.dir/vector2.cc.s

geometries/CMakeFiles/Geometries.dir/vector2.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/vector2.cc.o.requires

geometries/CMakeFiles/Geometries.dir/vector2.cc.o.provides: geometries/CMakeFiles/Geometries.dir/vector2.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/vector2.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/vector2.cc.o.provides

geometries/CMakeFiles/Geometries.dir/vector2.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/vector2.cc.o


geometries/CMakeFiles/Geometries.dir/vector3.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/vector3.cc.o: ../geometries/vector3.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object geometries/CMakeFiles/Geometries.dir/vector3.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/vector3.cc.o -c /home/yopio/workspace/niepce/geometries/vector3.cc

geometries/CMakeFiles/Geometries.dir/vector3.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/vector3.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/vector3.cc > CMakeFiles/Geometries.dir/vector3.cc.i

geometries/CMakeFiles/Geometries.dir/vector3.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/vector3.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/vector3.cc -o CMakeFiles/Geometries.dir/vector3.cc.s

geometries/CMakeFiles/Geometries.dir/vector3.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/vector3.cc.o.requires

geometries/CMakeFiles/Geometries.dir/vector3.cc.o.provides: geometries/CMakeFiles/Geometries.dir/vector3.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/vector3.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/vector3.cc.o.provides

geometries/CMakeFiles/Geometries.dir/vector3.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/vector3.cc.o


geometries/CMakeFiles/Geometries.dir/vector4.cc.o: geometries/CMakeFiles/Geometries.dir/flags.make
geometries/CMakeFiles/Geometries.dir/vector4.cc.o: ../geometries/vector4.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object geometries/CMakeFiles/Geometries.dir/vector4.cc.o"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Geometries.dir/vector4.cc.o -c /home/yopio/workspace/niepce/geometries/vector4.cc

geometries/CMakeFiles/Geometries.dir/vector4.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Geometries.dir/vector4.cc.i"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/geometries/vector4.cc > CMakeFiles/Geometries.dir/vector4.cc.i

geometries/CMakeFiles/Geometries.dir/vector4.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Geometries.dir/vector4.cc.s"
	cd /home/yopio/workspace/niepce/build/geometries && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/geometries/vector4.cc -o CMakeFiles/Geometries.dir/vector4.cc.s

geometries/CMakeFiles/Geometries.dir/vector4.cc.o.requires:

.PHONY : geometries/CMakeFiles/Geometries.dir/vector4.cc.o.requires

geometries/CMakeFiles/Geometries.dir/vector4.cc.o.provides: geometries/CMakeFiles/Geometries.dir/vector4.cc.o.requires
	$(MAKE) -f geometries/CMakeFiles/Geometries.dir/build.make geometries/CMakeFiles/Geometries.dir/vector4.cc.o.provides.build
.PHONY : geometries/CMakeFiles/Geometries.dir/vector4.cc.o.provides

geometries/CMakeFiles/Geometries.dir/vector4.cc.o.provides.build: geometries/CMakeFiles/Geometries.dir/vector4.cc.o


# Object files for target Geometries
Geometries_OBJECTS = \
"CMakeFiles/Geometries.dir/boundingbox2.cc.o" \
"CMakeFiles/Geometries.dir/boundingbox3.cc.o" \
"CMakeFiles/Geometries.dir/matrix4x4.cc.o" \
"CMakeFiles/Geometries.dir/normal3.cc.o" \
"CMakeFiles/Geometries.dir/point2.cc.o" \
"CMakeFiles/Geometries.dir/point3.cc.o" \
"CMakeFiles/Geometries.dir/point4.cc.o" \
"CMakeFiles/Geometries.dir/ray.cc.o" \
"CMakeFiles/Geometries.dir/vector2.cc.o" \
"CMakeFiles/Geometries.dir/vector3.cc.o" \
"CMakeFiles/Geometries.dir/vector4.cc.o"

# External object files for target Geometries
Geometries_EXTERNAL_OBJECTS =

geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/normal3.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/point2.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/point3.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/point4.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/ray.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/vector2.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/vector3.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/vector4.cc.o
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/build.make
geometries/libGeometries.a: geometries/CMakeFiles/Geometries.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX static library libGeometries.a"
	cd /home/yopio/workspace/niepce/build/geometries && $(CMAKE_COMMAND) -P CMakeFiles/Geometries.dir/cmake_clean_target.cmake
	cd /home/yopio/workspace/niepce/build/geometries && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Geometries.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
geometries/CMakeFiles/Geometries.dir/build: geometries/libGeometries.a

.PHONY : geometries/CMakeFiles/Geometries.dir/build

geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/boundingbox2.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/boundingbox3.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/matrix4x4.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/normal3.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/point2.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/point3.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/point4.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/ray.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/vector2.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/vector3.cc.o.requires
geometries/CMakeFiles/Geometries.dir/requires: geometries/CMakeFiles/Geometries.dir/vector4.cc.o.requires

.PHONY : geometries/CMakeFiles/Geometries.dir/requires

geometries/CMakeFiles/Geometries.dir/clean:
	cd /home/yopio/workspace/niepce/build/geometries && $(CMAKE_COMMAND) -P CMakeFiles/Geometries.dir/cmake_clean.cmake
.PHONY : geometries/CMakeFiles/Geometries.dir/clean

geometries/CMakeFiles/Geometries.dir/depend:
	cd /home/yopio/workspace/niepce/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yopio/workspace/niepce /home/yopio/workspace/niepce/geometries /home/yopio/workspace/niepce/build /home/yopio/workspace/niepce/build/geometries /home/yopio/workspace/niepce/build/geometries/CMakeFiles/Geometries.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : geometries/CMakeFiles/Geometries.dir/depend

