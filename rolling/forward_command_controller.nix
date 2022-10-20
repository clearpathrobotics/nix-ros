{
  ament_cmake,
  ament_cmake_gmock,
  controller_interface,
  controller_manager,
  generate_parameter_library,
  hardware_interface,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  realtime_tools,
  ros2_control_test_assets,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "forward_command_controller";
  pkgFinal = final.rolling.forward_command_controller;
  src = srcs.ros2_controllers.forward_command_controller;

  colconBuildDepends = [
    ament_cmake
    controller_interface
    generate_parameter_library
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
    std_msgs
  ];

  colconRunDepends = [
    controller_interface
    generate_parameter_library
    hardware_interface
    rclcpp
    rclcpp_lifecycle
    realtime_tools
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    controller_manager
    ros2_control_test_assets
  ];
}
