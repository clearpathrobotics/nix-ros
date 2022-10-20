{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  geometry_msgs,
  pcl,
  pcl_conversions,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pcl_ros";
  pkgFinal = final.rolling.pcl_ros;
  src = srcs.perception_pcl.pcl_ros;

  colconBuildDepends = [
    ament_cmake
    eigen
    geometry_msgs
    pcl
    pcl_conversions
    rclcpp
    rclcpp_components
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    pcl
    pcl_conversions
    rclcpp
    rclcpp_components
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
