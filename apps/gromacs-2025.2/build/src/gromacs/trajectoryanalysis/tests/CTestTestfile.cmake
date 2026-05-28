# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/trajectoryanalysis/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/trajectoryanalysis/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[TrajectoryAnalysisUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/trajectoryanalysis-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/TrajectoryAnalysisUnitTests.xml")
set_tests_properties([=[TrajectoryAnalysisUnitTests]=] PROPERTIES  LABELS "GTest;SlowTest" PROCESSORS "1" TIMEOUT "480" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/trajectoryanalysis/tests/CMakeLists.txt;61;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/trajectoryanalysis/tests/CMakeLists.txt;0;")
