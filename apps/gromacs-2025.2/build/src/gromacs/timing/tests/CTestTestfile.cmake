# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/timing/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/timing/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[GmxTimingTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/timing-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/GmxTimingTests.xml")
set_tests_properties([=[GmxTimingTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/timing/tests/CMakeLists.txt;34;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/timing/tests/CMakeLists.txt;0;")
