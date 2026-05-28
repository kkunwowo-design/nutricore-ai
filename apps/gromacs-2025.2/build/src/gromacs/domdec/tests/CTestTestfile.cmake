# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/domdec/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/domdec/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[DomDecTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/domdec-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/DomDecTests.xml")
set_tests_properties([=[DomDecTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/domdec/tests/CMakeLists.txt;34;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/domdec/tests/CMakeLists.txt;0;")
add_test([=[DomDecMpiTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/domdec-mpi-test" "-ntmpi" "4" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/DomDecMpiTests.xml")
set_tests_properties([=[DomDecMpiTests]=] PROPERTIES  LABELS "GTest;UnitTest;MpiTest;QuickGpuTest" PROCESSORS "4" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;376;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/domdec/tests/CMakeLists.txt;49;gmx_add_mpi_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/domdec/tests/CMakeLists.txt;0;")
