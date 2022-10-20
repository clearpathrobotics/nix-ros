{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  control_msgs,
  moveit_common,
  moveit_core,
  pluginlib,
  rclcpp,
  rclcpp_action,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_simple_controller_manager";
  pkgFinal = final.rolling.moveit_simple_controller_manager;
  src = srcs.moveit.moveit_simple_controller_manager;

  colconBuildDepends = [
    ament_cmake
    control_msgs
    moveit_common
    moveit_core
    pluginlib
    rclcpp
    rclcpp_action
  ];

  colconRunDepends = [
    control_msgs
    moveit_common
    moveit_core
    pluginlib
    rclcpp
    rclcpp_action
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
