{
  ament_cmake,
  ament_cmake_gtest,
  boost,
  diagnostic_updater,
  gtest,
  marti_common_msgs,
  nav_msgs,
  rclcpp,
  rosidl_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_roscpp";
  pkgFinal = final.rolling.swri_roscpp;
  src = srcs.marti_common.swri_roscpp;

  colconBuildDepends = [
    ament_cmake
    boost
    diagnostic_updater
    marti_common_msgs
    nav_msgs
    rclcpp
    rosidl_cmake
    rosidl_default_generators
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    boost
    diagnostic_updater
    marti_common_msgs
    nav_msgs
    rclcpp
    rosidl_default_runtime
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    gtest
  ];
}
