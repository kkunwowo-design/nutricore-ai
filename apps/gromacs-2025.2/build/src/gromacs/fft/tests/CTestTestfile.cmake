# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/fft/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/src/gromacs/fft/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[FFTUnitTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/fft-test" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/FFTUnitTests.xml")
set_tests_properties([=[FFTUnitTests]=] PROPERTIES  LABELS "GTest;SlowTest;QuickGpuTest" PROCESSORS "1" TIMEOUT "480" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/fft/tests/CMakeLists.txt;41;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/gromacs/fft/tests/CMakeLists.txt;0;")
