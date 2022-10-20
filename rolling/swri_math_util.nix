{
  ament_cmake,
  ament_cmake_gtest,
  boost,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_math_util";
  pkgFinal = final.rolling.swri_math_util;
  src = srcs.marti_common.swri_math_util;

  colconBuildDepends = [
    ament_cmake
    boost
    rclcpp
  ];

  colconRunDepends = [
    boost
    rclcpp
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
