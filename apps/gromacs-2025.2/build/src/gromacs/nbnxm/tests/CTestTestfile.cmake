# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/nbnxm/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/nbnxm/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[NbnxmTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/nbnxm-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/NbnxmTests.xml")
set_tests_properties([=[NbnxmTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/nbnxm/tests/CMakeLists.txt;34;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/nbnxm/tests/CMakeLists.txt;0;")
add_test([=[NbnxmGpuTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/nbnxm-gpu-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/NbnxmGpuTests.xml")
set_tests_properties([=[NbnxmGpuTests]=] PROPERTIES  LABELS "GTest;UnitTest;QuickGpuTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/nbnxm/tests/CMakeLists.txt;44;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/nbnxm/tests/CMakeLists.txt;0;")
