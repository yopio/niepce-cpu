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
include shapes/CMakeFiles/Shapes.dir/depend.make

# Include the progress variables for this target.
include shapes/CMakeFiles/Shapes.dir/progress.make

# Include the compile flags for this target's objects.
include shapes/CMakeFiles/Shapes.dir/flags.make

shapes/CMakeFiles/Shapes.dir/vertex.cc.o: shapes/CMakeFiles/Shapes.dir/flags.make
shapes/CMakeFiles/Shapes.dir/vertex.cc.o: ../shapes/vertex.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object shapes/CMakeFiles/Shapes.dir/vertex.cc.o"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Shapes.dir/vertex.cc.o -c /home/yopio/workspace/niepce/shapes/vertex.cc

shapes/CMakeFiles/Shapes.dir/vertex.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Shapes.dir/vertex.cc.i"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/shapes/vertex.cc > CMakeFiles/Shapes.dir/vertex.cc.i

shapes/CMakeFiles/Shapes.dir/vertex.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Shapes.dir/vertex.cc.s"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/shapes/vertex.cc -o CMakeFiles/Shapes.dir/vertex.cc.s

shapes/CMakeFiles/Shapes.dir/vertex.cc.o.requires:

.PHONY : shapes/CMakeFiles/Shapes.dir/vertex.cc.o.requires

shapes/CMakeFiles/Shapes.dir/vertex.cc.o.provides: shapes/CMakeFiles/Shapes.dir/vertex.cc.o.requires
	$(MAKE) -f shapes/CMakeFiles/Shapes.dir/build.make shapes/CMakeFiles/Shapes.dir/vertex.cc.o.provides.build
.PHONY : shapes/CMakeFiles/Shapes.dir/vertex.cc.o.provides

shapes/CMakeFiles/Shapes.dir/vertex.cc.o.provides.build: shapes/CMakeFiles/Shapes.dir/vertex.cc.o


shapes/CMakeFiles/Shapes.dir/shape.cc.o: shapes/CMakeFiles/Shapes.dir/flags.make
shapes/CMakeFiles/Shapes.dir/shape.cc.o: ../shapes/shape.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object shapes/CMakeFiles/Shapes.dir/shape.cc.o"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Shapes.dir/shape.cc.o -c /home/yopio/workspace/niepce/shapes/shape.cc

shapes/CMakeFiles/Shapes.dir/shape.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Shapes.dir/shape.cc.i"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/shapes/shape.cc > CMakeFiles/Shapes.dir/shape.cc.i

shapes/CMakeFiles/Shapes.dir/shape.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Shapes.dir/shape.cc.s"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/shapes/shape.cc -o CMakeFiles/Shapes.dir/shape.cc.s

shapes/CMakeFiles/Shapes.dir/shape.cc.o.requires:

.PHONY : shapes/CMakeFiles/Shapes.dir/shape.cc.o.requires

shapes/CMakeFiles/Shapes.dir/shape.cc.o.provides: shapes/CMakeFiles/Shapes.dir/shape.cc.o.requires
	$(MAKE) -f shapes/CMakeFiles/Shapes.dir/build.make shapes/CMakeFiles/Shapes.dir/shape.cc.o.provides.build
.PHONY : shapes/CMakeFiles/Shapes.dir/shape.cc.o.provides

shapes/CMakeFiles/Shapes.dir/shape.cc.o.provides.build: shapes/CMakeFiles/Shapes.dir/shape.cc.o


shapes/CMakeFiles/Shapes.dir/sphere.cc.o: shapes/CMakeFiles/Shapes.dir/flags.make
shapes/CMakeFiles/Shapes.dir/sphere.cc.o: ../shapes/sphere.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object shapes/CMakeFiles/Shapes.dir/sphere.cc.o"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Shapes.dir/sphere.cc.o -c /home/yopio/workspace/niepce/shapes/sphere.cc

shapes/CMakeFiles/Shapes.dir/sphere.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Shapes.dir/sphere.cc.i"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/shapes/sphere.cc > CMakeFiles/Shapes.dir/sphere.cc.i

shapes/CMakeFiles/Shapes.dir/sphere.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Shapes.dir/sphere.cc.s"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/shapes/sphere.cc -o CMakeFiles/Shapes.dir/sphere.cc.s

shapes/CMakeFiles/Shapes.dir/sphere.cc.o.requires:

.PHONY : shapes/CMakeFiles/Shapes.dir/sphere.cc.o.requires

shapes/CMakeFiles/Shapes.dir/sphere.cc.o.provides: shapes/CMakeFiles/Shapes.dir/sphere.cc.o.requires
	$(MAKE) -f shapes/CMakeFiles/Shapes.dir/build.make shapes/CMakeFiles/Shapes.dir/sphere.cc.o.provides.build
.PHONY : shapes/CMakeFiles/Shapes.dir/sphere.cc.o.provides

shapes/CMakeFiles/Shapes.dir/sphere.cc.o.provides.build: shapes/CMakeFiles/Shapes.dir/sphere.cc.o


shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o: shapes/CMakeFiles/Shapes.dir/flags.make
shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o: ../shapes/triangle_mesh.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Shapes.dir/triangle_mesh.cc.o -c /home/yopio/workspace/niepce/shapes/triangle_mesh.cc

shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Shapes.dir/triangle_mesh.cc.i"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/shapes/triangle_mesh.cc > CMakeFiles/Shapes.dir/triangle_mesh.cc.i

shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Shapes.dir/triangle_mesh.cc.s"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/shapes/triangle_mesh.cc -o CMakeFiles/Shapes.dir/triangle_mesh.cc.s

shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o.requires:

.PHONY : shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o.requires

shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o.provides: shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o.requires
	$(MAKE) -f shapes/CMakeFiles/Shapes.dir/build.make shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o.provides.build
.PHONY : shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o.provides

shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o.provides.build: shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o


shapes/CMakeFiles/Shapes.dir/triangle.cc.o: shapes/CMakeFiles/Shapes.dir/flags.make
shapes/CMakeFiles/Shapes.dir/triangle.cc.o: ../shapes/triangle.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object shapes/CMakeFiles/Shapes.dir/triangle.cc.o"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Shapes.dir/triangle.cc.o -c /home/yopio/workspace/niepce/shapes/triangle.cc

shapes/CMakeFiles/Shapes.dir/triangle.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Shapes.dir/triangle.cc.i"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yopio/workspace/niepce/shapes/triangle.cc > CMakeFiles/Shapes.dir/triangle.cc.i

shapes/CMakeFiles/Shapes.dir/triangle.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Shapes.dir/triangle.cc.s"
	cd /home/yopio/workspace/niepce/build/shapes && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yopio/workspace/niepce/shapes/triangle.cc -o CMakeFiles/Shapes.dir/triangle.cc.s

shapes/CMakeFiles/Shapes.dir/triangle.cc.o.requires:

.PHONY : shapes/CMakeFiles/Shapes.dir/triangle.cc.o.requires

shapes/CMakeFiles/Shapes.dir/triangle.cc.o.provides: shapes/CMakeFiles/Shapes.dir/triangle.cc.o.requires
	$(MAKE) -f shapes/CMakeFiles/Shapes.dir/build.make shapes/CMakeFiles/Shapes.dir/triangle.cc.o.provides.build
.PHONY : shapes/CMakeFiles/Shapes.dir/triangle.cc.o.provides

shapes/CMakeFiles/Shapes.dir/triangle.cc.o.provides.build: shapes/CMakeFiles/Shapes.dir/triangle.cc.o


# Object files for target Shapes
Shapes_OBJECTS = \
"CMakeFiles/Shapes.dir/vertex.cc.o" \
"CMakeFiles/Shapes.dir/shape.cc.o" \
"CMakeFiles/Shapes.dir/sphere.cc.o" \
"CMakeFiles/Shapes.dir/triangle_mesh.cc.o" \
"CMakeFiles/Shapes.dir/triangle.cc.o"

# External object files for target Shapes
Shapes_EXTERNAL_OBJECTS =

shapes/libShapes.a: shapes/CMakeFiles/Shapes.dir/vertex.cc.o
shapes/libShapes.a: shapes/CMakeFiles/Shapes.dir/shape.cc.o
shapes/libShapes.a: shapes/CMakeFiles/Shapes.dir/sphere.cc.o
shapes/libShapes.a: shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o
shapes/libShapes.a: shapes/CMakeFiles/Shapes.dir/triangle.cc.o
shapes/libShapes.a: shapes/CMakeFiles/Shapes.dir/build.make
shapes/libShapes.a: shapes/CMakeFiles/Shapes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yopio/workspace/niepce/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libShapes.a"
	cd /home/yopio/workspace/niepce/build/shapes && $(CMAKE_COMMAND) -P CMakeFiles/Shapes.dir/cmake_clean_target.cmake
	cd /home/yopio/workspace/niepce/build/shapes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Shapes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
shapes/CMakeFiles/Shapes.dir/build: shapes/libShapes.a

.PHONY : shapes/CMakeFiles/Shapes.dir/build

shapes/CMakeFiles/Shapes.dir/requires: shapes/CMakeFiles/Shapes.dir/vertex.cc.o.requires
shapes/CMakeFiles/Shapes.dir/requires: shapes/CMakeFiles/Shapes.dir/shape.cc.o.requires
shapes/CMakeFiles/Shapes.dir/requires: shapes/CMakeFiles/Shapes.dir/sphere.cc.o.requires
shapes/CMakeFiles/Shapes.dir/requires: shapes/CMakeFiles/Shapes.dir/triangle_mesh.cc.o.requires
shapes/CMakeFiles/Shapes.dir/requires: shapes/CMakeFiles/Shapes.dir/triangle.cc.o.requires

.PHONY : shapes/CMakeFiles/Shapes.dir/requires

shapes/CMakeFiles/Shapes.dir/clean:
	cd /home/yopio/workspace/niepce/build/shapes && $(CMAKE_COMMAND) -P CMakeFiles/Shapes.dir/cmake_clean.cmake
.PHONY : shapes/CMakeFiles/Shapes.dir/clean

shapes/CMakeFiles/Shapes.dir/depend:
	cd /home/yopio/workspace/niepce/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yopio/workspace/niepce /home/yopio/workspace/niepce/shapes /home/yopio/workspace/niepce/build /home/yopio/workspace/niepce/build/shapes /home/yopio/workspace/niepce/build/shapes/CMakeFiles/Shapes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shapes/CMakeFiles/Shapes.dir/depend

