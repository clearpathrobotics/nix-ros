{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_components,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclcpp_minimal_subscriber";
  pkgFinal = final.rolling.examples_rclcpp_minimal_subscriber;
  src = srcs.examples.examples_rclcpp_minimal_subscriber;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
