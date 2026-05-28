# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/nblib/listed_forces/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/api/nblib/listed_forces/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[NbLibListedForcesTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/nblib-listed-forces-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/NbLibListedForcesTests.xml")
set_tests_properties([=[NbLibListedForcesTests]=] PROPERTIES  LABELS "GTest;IntegrationTest" PROCESSORS "1" TIMEOUT "120" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/nblib/listed_forces/tests/CMakeLists.txt;64;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/nblib/listed_forces/tests/CMakeLists.txt;0;")
