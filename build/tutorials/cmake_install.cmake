# Install script for directory: /Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/tutorials

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_camera/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_cpp101/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_hello_glsl/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_lighting/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_matrix/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_mesh/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_shader_programming/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_texture/cmake_install.cmake")
  include("/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_transform/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()