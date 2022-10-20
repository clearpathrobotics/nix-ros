{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  camera_info_manager,
  cv_bridge,
  gazebo_dev,
  gazebo_msgs,
  gazebo_ros,
  geometry_msgs,
  image_transport,
  nav_msgs,
  rclcpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2_geometry_msgs,
  tf2_ros,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_plugins";
  pkgFinal = final.rolling.gazebo_plugins;
  src = srcs.gazebo_ros_pkgs.gazebo_plugins;

  colconBuildDepends = [
    ament_cmake
    camera_info_manager
    cv_bridge
    gazebo_dev
    gazebo_msgs
    gazebo_ros
    geometry_msgs
    image_transport
    nav_msgs
    rclcpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    gazebo_dev
    gazebo_msgs
    gazebo_ros
    geometry_msgs
    image_transport
    nav_msgs
    rclcpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    cv_bridge
  ];
}
