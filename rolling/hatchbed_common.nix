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
  name = "hatchbed_common";
  pkgFinal = final.rolling.hatchbed_common;
  src = srcs.hatchbed_common.hatchbed_common;

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
