{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  launch_ros,
  launch_testing,
  launch_testing_ament_cmake,
  nav_msgs,
  pkg-config,
  rclcpp,
  rclcpp_components,
  ros_gz_interfaces,
  rosgraph_msgs,
  sensor_msgs,
  std_msgs,
  tf2_msgs,
  trajectory_msgs,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_gz_bridge";
  pkgFinal = final.rolling.ros_gz_bridge;
  src = srcs.ros_ign.ros_gz_bridge;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    nav_msgs
    pkg-config
    rclcpp
    rclcpp_components
    ros_gz_interfaces
    rosgraph_msgs
    sensor_msgs
    std_msgs
    tf2_msgs
    trajectory_msgs
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    rclcpp
    rclcpp_components
    ros_gz_interfaces
    rosgraph_msgs
    sensor_msgs
    std_msgs
    tf2_msgs
    trajectory_msgs
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch_ros
    launch_testing
    launch_testing_ament_cmake
  ];
}
