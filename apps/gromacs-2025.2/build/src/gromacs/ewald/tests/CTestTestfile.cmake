# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/ewald/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/ewald/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[EwaldUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/ewald-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/EwaldUnitTests.xml")
set_tests_properties([=[EwaldUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest;QuickGpuTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/ewald/tests/CMakeLists.txt;42;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/ewald/tests/CMakeLists.txt;0;")
