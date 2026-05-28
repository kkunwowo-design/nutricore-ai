# CMake generated Testfile for 
# Source directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/gmxapi/cpp/workflow/tests
# Build directory: /mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/api/gmxapi/cpp/workflow/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[GmxapiInternalInterfaceTests]=] "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/bin/workflow-details-test" "-ntomp" "2" "--gtest_output=xml:/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/Testing/Temporary/GmxapiInternalInterfaceTests.xml")
set_tests_properties([=[GmxapiInternalInterfaceTests]=] PROPERTIES  LABELS "GTest;IntegrationTest;QuickGpuTest" PROCESSORS "2" TIMEOUT "120" WORKING_DIRECTORY "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/build/api/gmxapi/cpp/workflow/tests" _BACKTRACE_TRIPLES "/mnt/c/Users/enduser/Desktop/gromacs-2025.2/src/testutils/TestMacros.cmake;346;add_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/gmxapi/cpp/workflow/tests/CMakeLists.txt;51;gmx_register_gtest_test;/mnt/c/Users/enduser/Desktop/gromacs-2025.2/api/gmxapi/cpp/workflow/tests/CMakeLists.txt;0;")
