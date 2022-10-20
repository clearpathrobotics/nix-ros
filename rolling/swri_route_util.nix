{
  ament_cmake,
  boost,
  marti_common_msgs,
  marti_nav_msgs,
  rclcpp,
  swri_geometry_util,
  swri_math_util,
  swri_roscpp,
  swri_transform_util,
  tf2_geometry_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_route_util";
  pkgFinal = final.rolling.swri_route_util;
  src = srcs.marti_common.swri_route_util;

  colconBuildDepends = [
    ament_cmake
    boost
    marti_common_msgs
    marti_nav_msgs
    rclcpp
    swri_geometry_util
    swri_math_util
    swri_roscpp
    swri_transform_util
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    boost
    marti_common_msgs
    marti_nav_msgs
    rclcpp
    swri_geometry_util
    swri_math_util
    swri_roscpp
    swri_transform_util
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
