{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  controller_manager,
  hardware_interface,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  ros_environment,
  webots_ros2_driver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_control";
  pkgFinal = final.rolling.webots_ros2_control;
  src = srcs.webots_ros2.webots_ros2_control;

  colconBuildDepends = [
    ament_cmake
    controller_manager
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    ros_environment
    webots_ros2_driver
  ];

  colconRunDepends = [
    controller_manager
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    webots_ros2_driver
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
