# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/onlinehelp/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/onlinehelp/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[OnlineHelpUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/onlinehelp-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/OnlineHelpUnitTests.xml")
set_tests_properties([=[OnlineHelpUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/onlinehelp/tests/CMakeLists.txt;38;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/onlinehelp/tests/CMakeLists.txt;0;")
