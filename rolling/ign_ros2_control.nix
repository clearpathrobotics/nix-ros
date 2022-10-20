{
  ament_cmake,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  controller_manager,
  hardware_interface,
  pluginlib,
  rclcpp,
  rclcpp_lifecycle,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ign_ros2_control";
  pkgFinal = final.rolling.ign_ros2_control;
  src = srcs.ign_ros2_control.ign_ros2_control;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    controller_manager
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    ament_index_cpp
    controller_manager
    hardware_interface
    pluginlib
    rclcpp
    rclcpp_lifecycle
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
