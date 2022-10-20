{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  performance_test_fixture,
  rosidl_runtime_c,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_runtime_cpp";
  pkgFinal = final.rolling.rosidl_runtime_cpp;
  src = srcs.rosidl.rosidl_runtime_cpp;

  colconBuildDepends = [
    ament_cmake
    rosidl_runtime_c
  ];

  colconRunDepends = [
    ament_cmake
    rosidl_runtime_c
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    performance_test_fixture
  ];
}
