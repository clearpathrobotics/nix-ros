{
  ament_cmake,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_console_util";
  pkgFinal = final.rolling.swri_console_util;
  src = srcs.marti_common.swri_console_util;

  colconBuildDepends = [
    ament_cmake
    rclcpp
  ];

  colconRunDepends = [
    rclcpp
  ];

  colconTestDepends = [
  ];
}
