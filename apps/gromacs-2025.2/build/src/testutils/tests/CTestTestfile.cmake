# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/testutils/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[TestUtilsUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/testutils-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/TestUtilsUnitTests.xml")
set_tests_properties([=[TestUtilsUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/tests/CMakeLists.txt;34;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/tests/CMakeLists.txt;0;")
add_test([=[TestUtilsMpiUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/testutils-mpi-test" "-ntmpi" "2" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/TestUtilsMpiUnitTests.xml")
set_tests_properties([=[TestUtilsMpiUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest;MpiTest" PROCESSORS "2" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;376;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/tests/CMakeLists.txt;44;gmx_add_mpi_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/tests/CMakeLists.txt;0;")
