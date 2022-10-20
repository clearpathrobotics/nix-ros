{
  ament_cmake,
  ament_cmake_gmock,
  controller_manager,
  forward_command_controller,
  hardware_interface,
  pluginlib,
  rclcpp,
  ros2_control_test_assets,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velocity_controllers";
  pkgFinal = final.rolling.velocity_controllers;
  src = srcs.ros2_controllers.velocity_controllers;

  colconBuildDepends = [
    ament_cmake
    forward_command_controller
    pluginlib
    rclcpp
  ];

  colconRunDepends = [
    forward_command_controller
    rclcpp
  ];

  colconTestDepends = [
    ament_cmake_gmock
    controller_manager
    hardware_interface
    ros2_control_test_assets
  ];
}
