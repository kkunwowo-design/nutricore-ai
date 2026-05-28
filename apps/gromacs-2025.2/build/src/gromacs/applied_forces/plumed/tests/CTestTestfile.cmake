# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/applied_forces/plumed/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/applied_forces/plumed/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[PlumedAppliedForcesUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/plumed_applied_forces-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/PlumedAppliedForcesUnitTests.xml")
set_tests_properties([=[PlumedAppliedForcesUnitTests]=] PROPERTIES  LABELS "GTest;UnitTest" PROCESSORS "1" TIMEOUT "30" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;364;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/applied_forces/plumed/tests/CMakeLists.txt;34;gmx_add_unit_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/applied_forces/plumed/tests/CMakeLists.txt;0;")
add_test([=[PlumedMDTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/plumed_md-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/PlumedMDTests.xml")
set_tests_properties([=[PlumedMDTests]=] PROPERTIES  LABELS "GTest;IntegrationTest;QuickGpuTest" PROCESSORS "1" TIMEOUT "120" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/applied_forces/plumed/tests/CMakeLists.txt;57;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/applied_forces/plumed/tests/CMakeLists.txt;0;")
