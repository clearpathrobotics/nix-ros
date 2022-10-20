{
  ament_cmake,
  ament_cmake_gmock,
  controller_interface,
  controller_manager,
  generate_parameter_library,
  geometry_msgs,
  hardware_interface,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  realtime_tools,
  ros2_control_test_assets,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "force_torque_sensor_broadcaster";
  pkgFinal = final.rolling.force_torque_sensor_broadcaster;
  src = srcs.ros2_controllers.force_torque_sensor_broadcaster;

  colconBuildDepends = [
    ament_cmake
    controller_interface
    generate_parameter_library
    geometry_msgs
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
  ];

  colconRunDepends = [
    controller_interface
    generate_parameter_library
    geometry_msgs
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
  ];

  colconTestDepends = [
    ament_cmake_gmock
    controller_manager
    hardware_interface
    ros2_control_test_assets
  ];
}
