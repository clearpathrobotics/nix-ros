{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  bond,
  bondcpp,
  builtin_interfaces,
  pkg-config,
  rclcpp,
  rclcpp_lifecycle,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,
  util-linux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_bond";
  pkgFinal = final.rolling.test_bond;
  src = srcs.bond_core.test_bond;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rclcpp_lifecycle
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    bond
    bondcpp
    pkg-config
    rclcpp
    rclcpp_lifecycle
    util-linux
  ];
}
