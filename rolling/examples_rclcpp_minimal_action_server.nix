{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  example_interfaces,
  rclcpp,
  rclcpp_action,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclcpp_minimal_action_server";
  pkgFinal = final.rolling.examples_rclcpp_minimal_action_server;
  src = srcs.examples.examples_rclcpp_minimal_action_server;

  colconBuildDepends = [
    ament_cmake
    example_interfaces
    rclcpp
    rclcpp_action
  ];

  colconRunDepends = [
    example_interfaces
    rclcpp
    rclcpp_action
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
