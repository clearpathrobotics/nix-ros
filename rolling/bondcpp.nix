{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  bond,
  pkg-config,
  rclcpp,
  rclcpp_lifecycle,
  smclib,
  util-linux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bondcpp";
  pkgFinal = final.rolling.bondcpp;
  src = srcs.bond_core.bondcpp;

  colconBuildDepends = [
    ament_cmake
    bond
    pkg-config
    rclcpp
    rclcpp_lifecycle
    smclib
    util-linux
  ];

  colconRunDepends = [
    bond
    rclcpp
    rclcpp_lifecycle
    smclib
    util-linux
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
