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
include tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/compiler_depend.make

# Include the progress variables for this target.
include tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/progress.make

# Include the compile flags for this target's objects.
include tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/flags.make

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/codegen:
.PHONY : tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/codegen

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/main.cpp.o: tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/flags.make
tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/main.cpp.o: /Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester\ 5\ (Fall\ 2024)/CS\ 3451\ (Computer\ Graphics)/Programming\ Assignments/9\ –\ Final\ Project/GraphicsRepoFinal/tutorials/tutorial_opengl/main.cpp
tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/main.cpp.o: tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/main.cpp.o"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/main.cpp.o -MF CMakeFiles/tutorial_opengl.dir/main.cpp.o.d -o CMakeFiles/tutorial_opengl.dir/main.cpp.o -c "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/main.cpp"

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_opengl.dir/main.cpp.i"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/main.cpp" > CMakeFiles/tutorial_opengl.dir/main.cpp.i

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_opengl.dir/main.cpp.s"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/main.cpp" -o CMakeFiles/tutorial_opengl.dir/main.cpp.s

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o: tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/flags.make
tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o: /Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester\ 5\ (Fall\ 2024)/CS\ 3451\ (Computer\ Graphics)/Programming\ Assignments/9\ –\ Final\ Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glad/glad.cpp
tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o: tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o -MF CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o.d -o CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o -c "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glad/glad.cpp"

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.i"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glad/glad.cpp" > CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.i

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.s"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl/glad/glad.cpp" -o CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.s

# Object files for target tutorial_opengl
tutorial_opengl_OBJECTS = \
"CMakeFiles/tutorial_opengl.dir/main.cpp.o" \
"CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o"

# External object files for target tutorial_opengl
tutorial_opengl_EXTERNAL_OBJECTS =

tutorials/tutorial_opengl/tutorial_opengl: tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/main.cpp.o
tutorials/tutorial_opengl/tutorial_opengl: tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/glad/glad.cpp.o
tutorials/tutorial_opengl/tutorial_opengl: tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/build.make
tutorials/tutorial_opengl/tutorial_opengl: tutorials/tutorial_opengl/glfw-3.3/src/libglfw3.a
tutorials/tutorial_opengl/tutorial_opengl: tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tutorial_opengl"
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial_opengl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/build: tutorials/tutorial_opengl/tutorial_opengl
.PHONY : tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/build

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/clean:
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" && $(CMAKE_COMMAND) -P CMakeFiles/tutorial_opengl.dir/cmake_clean.cmake
.PHONY : tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/clean

tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/depend:
	cd "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials/tutorial_opengl" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl" "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : tutorials/tutorial_opengl/CMakeFiles/tutorial_opengl.dir/depend
