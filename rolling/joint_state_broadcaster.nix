{
  ament_cmake,
  ament_cmake_gmock,
  control_msgs,
  controller_interface,
  controller_manager,
  generate_parameter_library,
  hardware_interface,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  rcutils,
  realtime_tools,
  ros2_control_test_assets,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_state_broadcaster";
  pkgFinal = final.rolling.joint_state_broadcaster;
  src = srcs.ros2_controllers.joint_state_broadcaster;

  colconBuildDepends = [
    ament_cmake
    control_msgs
    controller_interface
    generate_parameter_library
    hardware_interface
    pluginlib
    rclcpp_lifecycle
    rcutils
    realtime_tools
    sensor_msgs
  ];

  colconRunDepends = [
    control_msgs
    controller_interface
    generate_parameter_library
    hardware_interface
    pluginlib
    rclcpp_lifecycle
    rcutils
    realtime_tools
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    controller_manager
    rclcpp
    ros2_control_test_assets
  ];
}
