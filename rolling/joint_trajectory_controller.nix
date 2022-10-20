{
  ament_cmake,
  ament_cmake_gmock,
  angles,
  control_msgs,
  control_toolbox,
  controller_interface,
  controller_manager,
  generate_parameter_library,
  hardware_interface,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  realtime_tools,
  ros2_control_test_assets,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_trajectory_controller";
  pkgFinal = final.rolling.joint_trajectory_controller;
  src = srcs.ros2_controllers.joint_trajectory_controller;

  colconBuildDepends = [
    ament_cmake
    angles
    control_msgs
    control_toolbox
    controller_interface
    generate_parameter_library
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
    trajectory_msgs
  ];

  colconRunDepends = [
    angles
    control_msgs
    control_toolbox
    controller_interface
    generate_parameter_library
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    realtime_tools
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    controller_manager
    ros2_control_test_assets
  ];
}
