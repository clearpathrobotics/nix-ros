{
  ament_cmake,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2cli_test_interfaces";
  pkgFinal = final.rolling.ros2cli_test_interfaces;
  src = srcs.ros2cli.ros2cli_test_interfaces;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
