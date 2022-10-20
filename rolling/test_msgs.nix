{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,
  test_interface_files,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_msgs";
  pkgFinal = final.rolling.test_msgs;
  src = srcs.rcl_interfaces.test_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
    test_interface_files
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
