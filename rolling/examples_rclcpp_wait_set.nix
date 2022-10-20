{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  example_interfaces,
  rclcpp,
  rclcpp_components,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclcpp_wait_set";
  pkgFinal = final.rolling.examples_rclcpp_wait_set;
  src = srcs.examples.examples_rclcpp_wait_set;

  colconBuildDepends = [
    ament_cmake
    example_interfaces
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconRunDepends = [
    example_interfaces
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
