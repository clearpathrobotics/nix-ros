{
  ackermann_msgs,
  ament_cmake,
  ament_cmake_gmock,
  controller_interface,
  controller_manager,
  geometry_msgs,
  hardware_interface,
  nav_msgs,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  rcpputils,
  realtime_tools,
  ros2_control_test_assets,
  std_srvs,
  tf2,
  tf2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tricycle_controller";
  pkgFinal = final.rolling.tricycle_controller;
  src = srcs.ros2_controllers.tricycle_controller;

  colconBuildDepends = [
    ackermann_msgs
    ament_cmake
    controller_interface
    geometry_msgs
    hardware_interface
    nav_msgs
    pluginlib
    rclcpp
    rclcpp_lifecycle
    rcpputils
    realtime_tools
    std_srvs
    tf2
    tf2_msgs
  ];

  colconRunDepends = [
    ackermann_msgs
    controller_interface
    geometry_msgs
    hardware_interface
    nav_msgs
    rclcpp
    rclcpp_lifecycle
    rcpputils
    realtime_tools
    std_srvs
    tf2
    tf2_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    controller_manager
    ros2_control_test_assets
  ];
}
