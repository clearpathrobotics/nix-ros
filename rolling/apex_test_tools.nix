{
  ament_cmake,
  ament_cmake_auto,
  ament_cmake_gtest,
  ament_cmake_pclint,
  ament_lint_auto,
  ament_lint_common,
  osrf_testing_tools_cpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "apex_test_tools";
  pkgFinal = final.rolling.apex_test_tools;
  src = srcs.apex_test_tools.apex_test_tools;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_auto
    ament_cmake_gtest
    osrf_testing_tools_cpp
  ];

  colconRunDepends = [
    ament_cmake_gtest
    osrf_testing_tools_cpp
  ];

  colconTestDepends = [
    ament_cmake_pclint
    ament_lint_auto
    ament_lint_common
  ];
}
