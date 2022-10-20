{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  controller_manager_msgs,
  moveit_common,
  moveit_core,
  moveit_simple_controller_manager,
  pluginlib,
  rclcpp_action,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_control_interface";
  pkgFinal = final.rolling.moveit_ros_control_interface;
  src = srcs.moveit.moveit_ros_control_interface;

  colconBuildDepends = [
    ament_cmake
    controller_manager_msgs
    moveit_common
    moveit_core
    moveit_simple_controller_manager
    pluginlib
    rclcpp_action
    trajectory_msgs
  ];

  colconRunDepends = [
    controller_manager_msgs
    moveit_common
    moveit_core
    moveit_simple_controller_manager
    pluginlib
    rclcpp_action
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
