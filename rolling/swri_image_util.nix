{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_cpp,
  boost,
  camera_calibration_parsers,
  cv_bridge,
  eigen,
  geometry_msgs,
  image_geometry,
  image_transport,
  message_filters,
  nav_msgs,
  pkg-config,
  rclcpp,
  rclcpp_components,
  rclpy,
  std_msgs,
  swri_geometry_util,
  swri_math_util,
  swri_opencv_util,
  swri_roscpp,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_image_util";
  pkgFinal = final.rolling.swri_image_util;
  src = srcs.marti_common.swri_image_util;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    boost
    camera_calibration_parsers
    cv_bridge
    eigen
    geometry_msgs
    image_geometry
    image_transport
    message_filters
    nav_msgs
    pkg-config
    rclcpp
    rclcpp_components
    rclpy
    std_msgs
    swri_geometry_util
    swri_math_util
    swri_opencv_util
    swri_roscpp
    tf2
  ];

  colconRunDepends = [
    ament_index_cpp
    boost
    camera_calibration_parsers
    cv_bridge
    eigen
    geometry_msgs
    image_geometry
    image_transport
    message_filters
    nav_msgs
    rclcpp
    rclcpp_components
    rclpy
    std_msgs
    swri_geometry_util
    swri_math_util
    swri_opencv_util
    swri_roscpp
    tf2
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
