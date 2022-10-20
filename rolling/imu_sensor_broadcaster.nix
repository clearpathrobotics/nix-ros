{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  controller_interface,
  controller_manager,
  hardware_interface,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  realtime_tools,
  ros2_control_test_assets,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "imu_sensor_broadcaster";
  pkgFinal = final.rolling.imu_sensor_broadcaster;
  src = srcs.ros2_controllers.imu_sensor_broadcaster;

  colconBuildDepends = [
    ament_cmake
    controller_interface
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
    sensor_msgs
  ];

  colconRunDepends = [
    controller_interface
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    controller_manager
    hardware_interface
    ros2_control_test_assets
  ];
}
