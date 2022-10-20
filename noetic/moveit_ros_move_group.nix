{
  actionlib,
  catkin,
  moveit_core,
  moveit_kinematics,
  moveit_resources_fanuc_moveit_config,
  moveit_ros_planning,
  pluginlib,
  roscpp,
  rostest,
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
  pkgFinal = final.noetic.moveit_ros_move_group;
  src = srcs.moveit.moveit_ros_move_group;

  colconBuildDepends = [
    actionlib
    catkin
    moveit_core
    moveit_ros_planning
    pluginlib
    roscpp
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    actionlib
    moveit_core
    moveit_kinematics
    moveit_ros_planning
    pluginlib
    roscpp
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    moveit_resources_fanuc_moveit_config
    rostest
  ];
}
