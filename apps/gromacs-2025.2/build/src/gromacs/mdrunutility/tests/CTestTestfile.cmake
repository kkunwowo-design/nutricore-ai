# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/mdrunutility/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/mdrunutility/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[MdrunUtilityUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/mdrunutility-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/MdrunUtilityUnitTests.xml")
set_tests_properties([=[MdrunUtilityUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/mdrunutility/tests/CMakeLists.txt;38;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/mdrunutility/tests/CMakeLists.txt;0;")
add_test([=[MdrunUtilityMpiUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/mdrunutility-mpi-test" "-ntmpi" "4" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/MdrunUtilityMpiUnitTests.xml")
set_tests_properties([=[MdrunUtilityMpiUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest;MpiTest" PROCESSORS "4" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;376;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/mdrunutility/tests/CMakeLists.txt;45;gmx_add_mpi_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/mdrunutility/tests/CMakeLists.txt;0;")
