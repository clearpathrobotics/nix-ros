{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclcpp_minimal_publisher";
  pkgFinal = final.rolling.examples_rclcpp_minimal_publisher;
  src = srcs.examples.examples_rclcpp_minimal_publisher;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    std_msgs
  ];

  colconRunDepends = [
    rclcpp
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
