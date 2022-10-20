{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  moveit_common,
  moveit_core,
  moveit_kinematics,
  moveit_resources_fanuc_moveit_config,
  moveit_ros_occupancy_map_monitor,
  moveit_ros_planning,
  pluginlib,
  rclcpp,
  rclcpp_action,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_move_group";
  pkgFinal = final.rolling.moveit_ros_move_group;
  src = srcs.moveit.moveit_ros_move_group;

  colconBuildDepends = [
    ament_cmake
    moveit_common
    moveit_core
    moveit_ros_occupancy_map_monitor
    moveit_ros_planning
    pluginlib
    rclcpp
    rclcpp_action
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    moveit_common
    moveit_core
    moveit_kinematics
    moveit_ros_occupancy_map_monitor
    moveit_ros_planning
    pluginlib
    rclcpp
    rclcpp_action
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    moveit_resources_fanuc_moveit_config
  ];
}
