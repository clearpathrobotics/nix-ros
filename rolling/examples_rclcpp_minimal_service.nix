{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  example_interfaces,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "examples_rclcpp_minimal_service";
  pkgFinal = final.rolling.examples_rclcpp_minimal_service;
  src = srcs.examples.examples_rclcpp_minimal_service;

  colconBuildDepends = [
    ament_cmake
    example_interfaces
    rclcpp
  ];

  colconRunDepends = [
    example_interfaces
    rclcpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
