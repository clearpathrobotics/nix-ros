{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  message_filters,
  nav_msgs,
  octomap_msgs,
  octomap_ros,
  pcl,
  pcl_conversions,
  pcl_ros,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_server";
  pkgFinal = final.rolling.octomap_server;
  src = srcs.octomap_mapping.octomap_server;

  colconBuildDepends = [
    ament_cmake_auto
    geometry_msgs
    message_filters
    nav_msgs
    octomap_msgs
    octomap_ros
    pcl
    pcl_conversions
    pcl_ros
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_filters
    nav_msgs
    octomap_msgs
    octomap_ros
    pcl
    pcl_conversions
    pcl_ros
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
