{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_cpp,
  boost,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_system_util";
  pkgFinal = final.rolling.swri_system_util;
  src = srcs.marti_common.swri_system_util;

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
    ament_index_cpp
  ];
}
