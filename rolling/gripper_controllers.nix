{
  ament_cmake,
  ament_cmake_gmock,
  control_msgs,
  control_toolbox,
  controller_interface,
  controller_manager,
  hardware_interface,
  pluginlib,
  rclcpp,
  rclcpp_action,
  realtime_tools,
  ros2_control_test_assets,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gripper_controllers";
  pkgFinal = final.rolling.gripper_controllers;
  src = srcs.ros2_controllers.gripper_controllers;

  colconBuildDepends = [
    ament_cmake
    control_msgs
    control_toolbox
    controller_interface
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_action
    realtime_tools
  ];

  colconRunDepends = [
    control_msgs
    control_toolbox
    controller_interface
    hardware_interface
    rclcpp
    rclcpp_action
    realtime_tools
  ];

  colconTestDepends = [
    ament_cmake_gmock
    controller_manager
    ros2_control_test_assets
  ];
}
