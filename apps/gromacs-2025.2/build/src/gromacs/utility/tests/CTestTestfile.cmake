# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/utility/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/utility/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[UtilityUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/utility-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/UtilityUnitTests.xml")
set_tests_properties([=[UtilityUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/utility/tests/CMakeLists.txt;34;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/utility/tests/CMakeLists.txt;0;")
add_test([=[UtilityMpiUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/utility-mpi-test" "-ntmpi" "2" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/UtilityMpiUnitTests.xml")
set_tests_properties([=[UtilityMpiUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest;MpiTest" PROCESSORS "2" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;376;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/utility/tests/CMakeLists.txt;66;gmx_add_mpi_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/utility/tests/CMakeLists.txt;0;")
