{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclcpp_minimal_timer";
  pkgFinal = final.rolling.examples_rclcpp_minimal_timer;
  src = srcs.examples.examples_rclcpp_minimal_timer;

  colconBuildDepends = [
    ament_cmake
    rclcpp
  ];

  colconRunDepends = [
    rclcpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
