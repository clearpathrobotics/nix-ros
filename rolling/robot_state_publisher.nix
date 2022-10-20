{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  kdl_parser,
  launch_ros,
  launch_testing_ament_cmake,
  orocos_kdl_vendor,
  rcl_interfaces,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  std_msgs,
  tf2_ros,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_state_publisher";
  pkgFinal = final.rolling.robot_state_publisher;
  src = srcs.robot_state_publisher.robot_state_publisher;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    kdl_parser
    orocos_kdl_vendor
    rcl_interfaces
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    tf2_ros
    urdf
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    kdl_parser
    orocos_kdl_vendor
    rcl_interfaces
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    tf2_ros
    urdf
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch_ros
    launch_testing_ament_cmake
  ];
}
