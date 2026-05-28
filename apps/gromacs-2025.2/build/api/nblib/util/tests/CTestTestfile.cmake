# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/nblib/util/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/api/nblib/util/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[NbLibUtilTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/nblib-util-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/NbLibUtilTests.xml")
set_tests_properties([=[NbLibUtilTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/nblib/util/tests/CMakeLists.txt;50;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/nblib/util/tests/CMakeLists.txt;0;")
