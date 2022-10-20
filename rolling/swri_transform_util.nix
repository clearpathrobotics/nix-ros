{
  ament_cmake,
  ament_cmake_python,
  boost,
  cv_bridge,
  diagnostic_msgs,
  geographic_msgs,
  geometry_msgs,
  geos,
  gps_msgs,
  launch_xml,
  libyamlcpp,
  marti_nav_msgs,
  pkg-config,
  proj,
  python3Packages,
  rcl_interfaces,
  rclcpp,
  rclcpp_components,
  rclpy,
  sensor_msgs,
  swri_math_util,
  swri_roscpp,
  tf2,
  tf2_geometry_msgs,
  tf2_py,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_transform_util";
  pkgFinal = final.rolling.swri_transform_util;
  src = srcs.marti_common.swri_transform_util;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    boost
    cv_bridge
    diagnostic_msgs
    geographic_msgs
    geometry_msgs
    geos
    gps_msgs
    libyamlcpp
    marti_nav_msgs
    pkg-config
    proj
    rcl_interfaces
    rclcpp
    rclcpp_components
    rclpy
    sensor_msgs
    swri_math_util
    swri_roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    boost
    cv_bridge
    diagnostic_msgs
    geographic_msgs
    geometry_msgs
    geos
    gps_msgs
    launch_xml
    libyamlcpp
    marti_nav_msgs
    proj
    python3Packages.numpy
    rcl_interfaces
    rclcpp
    rclcpp_components
    rclpy
    sensor_msgs
    swri_math_util
    swri_roscpp
    tf2
    tf2_geometry_msgs
    tf2_py
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
