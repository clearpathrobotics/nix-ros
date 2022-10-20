{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  libyaml,
  libyaml_vendor,
  mimick_vendor,
  osrf_testing_tools_cpp,
  performance_test_fixture,
  rcpputils,
  rcutils,
  rmw,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcl_yaml_param_parser";
  pkgFinal = final.rolling.rcl_yaml_param_parser;
  src = srcs.rcl.rcl_yaml_param_parser;

  colconBuildDepends = [
    ament_cmake_ros
    libyaml
    libyaml_vendor
    rcutils
    rmw
  ];

  colconRunDepends = [
    libyaml
    libyaml_vendor
    rmw
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    mimick_vendor
    osrf_testing_tools_cpp
    performance_test_fixture
    rcpputils
  ];
}
