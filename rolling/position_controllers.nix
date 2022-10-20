{
  ament_cmake,
  ament_cmake_gmock,
  controller_manager,
  forward_command_controller,
  pluginlib,
  rclcpp,
  ros2_control_test_assets,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "position_controllers";
  pkgFinal = final.rolling.position_controllers;
  src = srcs.ros2_controllers.position_controllers;

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
    ros2_control_test_assets
  ];
}
