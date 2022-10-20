{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  launch,
  launch_ros,
  ouster_msgs,
  pcl,
  pcl_conversions,
  rclcpp,
  rclcpp_components,
  rclcpp_lifecycle,
  sensor_msgs,
  std_srvs,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros2_ouster";
  pkgFinal = final.rolling.ros2_ouster;
  src = srcs.ros2_ouster_drivers.ros2_ouster;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    launch
    launch_ros
    ouster_msgs
    pcl
    pcl_conversions
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    sensor_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    launch
    launch_ros
    ouster_msgs
    pcl
    pcl_conversions
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    sensor_msgs
    std_srvs
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
