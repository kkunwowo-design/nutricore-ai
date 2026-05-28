# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/tools/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/tools/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[ToolUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/tool-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/ToolUnitTests.xml")
set_tests_properties([=[ToolUnitTests]=] PROPERTIES  LABELS "GTest;SlowTest" PROCESSORS "1" TIMEOUT "480" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/tools/tests/CMakeLists.txt;43;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/tools/tests/CMakeLists.txt;0;")
add_test([=[ToolWithLeaksUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/tool-test-with-leaks" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/ToolWithLeaksUnitTests.xml")
set_tests_properties([=[ToolWithLeaksUnitTests]=] PROPERTIES  LABELS "GTest;SlowTest" PROCESSORS "1" TIMEOUT "480" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/tools/tests/CMakeLists.txt;50;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/tools/tests/CMakeLists.txt;0;")
