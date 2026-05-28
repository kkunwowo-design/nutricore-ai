# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/external/muparser"
  "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/_deps/muparser-build"
  "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/_deps/muparser-subbuild/muparser-populate-prefix"
  "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/_deps/muparser-subbuild/muparser-populate-prefix/tmp"
  "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/_deps/muparser-subbuild/muparser-populate-prefix/src/muparser-populate-stamp"
  "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/_deps/muparser-subbuild/muparser-populate-prefix/src"
  "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/_deps/muparser-subbuild/muparser-populate-prefix/src/muparser-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/_deps/muparser-subbuild/muparser-populate-prefix/src/muparser-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/_deps/muparser-subbuild/muparser-populate-prefix/src/muparser-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
