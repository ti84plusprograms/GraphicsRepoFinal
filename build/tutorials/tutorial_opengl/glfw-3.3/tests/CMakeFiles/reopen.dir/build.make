# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build"

# Include any dependencies generated for this target.
include tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/compiler_depend.make

# Include the progress variables for this target.
include tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/progress.make

# Include the compile flags for this target's objects.
include tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/flags.make

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/codegen:
.PHONY : tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/codegen

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/reopen.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/flags.make
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/reopen.c.o: /Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester\ 5\ (Fall\ 2024)/CS\ 3451\ (Computer\ Graphics)/Programming\ Assignments/9\ –\ Final\ Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/tests/reopen.c
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/reopen.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/reopen.c.o"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/reopen.c.o -MF CMakeFiles/reopen.dir/reopen.c.o.d -o CMakeFiles/reopen.dir/reopen.c.o -c "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/tests/reopen.c"

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/reopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/reopen.dir/reopen.c.i"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/tests/reopen.c" > CMakeFiles/reopen.dir/reopen.c.i

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/reopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/reopen.dir/reopen.c.s"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/tests/reopen.c" -o CMakeFiles/reopen.dir/reopen.c.s

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/flags.make
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.o: /Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester\ 5\ (Fall\ 2024)/CS\ 3451\ (Computer\ Graphics)/Programming\ Assignments/9\ –\ Final\ Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.o"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.o -MF CMakeFiles/reopen.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/reopen.dir/__/deps/glad_gl.c.o -c "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c"

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/reopen.dir/__/deps/glad_gl.c.i"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c" > CMakeFiles/reopen.dir/__/deps/glad_gl.c.i

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/reopen.dir/__/deps/glad_gl.c.s"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c" -o CMakeFiles/reopen.dir/__/deps/glad_gl.c.s

# Object files for target reopen
reopen_OBJECTS = \
"CMakeFiles/reopen.dir/reopen.c.o" \
"CMakeFiles/reopen.dir/__/deps/glad_gl.c.o"

# External object files for target reopen
reopen_EXTERNAL_OBJECTS =

tutorials/tutorial_opengl/glfw-3.3/tests/reopen: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/reopen.c.o
tutorials/tutorial_opengl/glfw-3.3/tests/reopen: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/__/deps/glad_gl.c.o
tutorials/tutorial_opengl/glfw-3.3/tests/reopen: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/build.make
tutorials/tutorial_opengl/glfw-3.3/tests/reopen: tutorials/tutorial_opengl/glfw-3.3/src/libglfw3.a
tutorials/tutorial_opengl/glfw-3.3/tests/reopen: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable reopen"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reopen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/build: tutorials/tutorial_opengl/glfw-3.3/tests/reopen
.PHONY : tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/build

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/clean:
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" && $(CMAKE_COMMAND) -P CMakeFiles/reopen.dir/cmake_clean.cmake
.PHONY : tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/clean

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/depend:
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glfw-3.3/tests" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/reopen.dir/depend
