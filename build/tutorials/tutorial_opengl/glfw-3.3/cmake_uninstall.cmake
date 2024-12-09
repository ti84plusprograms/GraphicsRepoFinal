
if (NOT EXISTS "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: \"/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/install_manifest.txt\"")
endif()

file(READ "/Users/ary/Library/CloudStorage/OneDrive-GeorgiaInstituteofTechnology/Semester 5 (Fall 2024)/CS 3451 (Computer Graphics)/Programming Assignments/9 – Final Project/GraphicsRepoFinal/build/tutorials/tutorial_opengl/glfw-3.3/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")

foreach (file ${files})
  message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
  if (EXISTS "$ENV{DESTDIR}${file}")
    exec_program("/usr/local/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
                 OUTPUT_VARIABLE rm_out
                 RETURN_VALUE rm_retval)
    if (NOT "${rm_retval}" STREQUAL 0)
      MESSAGE(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    endif()
  elseif (IS_SYMLINK "$ENV{DESTDIR}${file}")
    EXEC_PROGRAM("/usr/local/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
                 OUTPUT_VARIABLE rm_out
                 RETURN_VALUE rm_retval)
    if (NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing symlink \"$ENV{DESTDIR}${file}\"")
    endif()
  else()
    message(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
  endif()
endforeach()

