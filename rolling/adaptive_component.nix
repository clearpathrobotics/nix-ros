{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_components,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "adaptive_component";
  pkgFinal = final.rolling.adaptive_component;
  src = srcs.adaptive_component.adaptive_component;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_components
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
