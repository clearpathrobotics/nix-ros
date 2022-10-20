{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  angles,
  diagnostic_updater,
  geometry_msgs,
  libyamlcpp,
  message_filters,
  pcl,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  tf2,
  tf2_ros,
  velodyne_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_pointcloud";
  pkgFinal = final.rolling.velodyne_pointcloud;
  src = srcs.velodyne.velodyne_pointcloud;

  colconBuildDepends = [
    ament_cmake
    angles
    diagnostic_updater
    geometry_msgs
    libyamlcpp
    message_filters
    pcl
    rclcpp
    rclcpp_components
    sensor_msgs
    tf2
    tf2_ros
    velodyne_msgs
  ];

  colconRunDepends = [
    angles
    diagnostic_updater
    geometry_msgs
    libyamlcpp
    message_filters
    pcl
    rclcpp
    rclcpp_components
    sensor_msgs
    tf2
    tf2_ros
    velodyne_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
