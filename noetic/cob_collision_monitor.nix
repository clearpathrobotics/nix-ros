{
  catkin,
  cob_moveit_config,
  moveit_ros_move_group,
  moveit_ros_planning,
  pluginlib,
  std_msgs,
  tf,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_collision_monitor";
  pkgFinal = final.noetic.cob_collision_monitor;
  src = srcs.cob_manipulation.cob_collision_monitor;

  colconBuildDepends = [
    catkin
    moveit_ros_move_group
    moveit_ros_planning
    pluginlib
    std_msgs
    tf
    tf2_ros
  ];

  colconRunDepends = [
    cob_moveit_config
    moveit_ros_move_group
    moveit_ros_planning
    pluginlib
    std_msgs
    tf
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
