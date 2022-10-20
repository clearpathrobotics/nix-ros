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
  name = "effort_controllers";
  pkgFinal = final.rolling.effort_controllers;
  src = srcs.ros2_controllers.effort_controllers;

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
