{
  actionlib,
  catkin,
  dynamic_reconfigure,
  eigen,
  moveit_core,
  moveit_msgs,
  moveit_ros_move_group,
  moveit_ros_planning,
  pluginlib,
  rosconsole,
  roscpp,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_manipulation";
  pkgFinal = final.noetic.moveit_ros_manipulation;
  src = srcs.moveit.moveit_ros_manipulation;

  colconBuildDepends = [
    actionlib
    catkin
    dynamic_reconfigure
    eigen
    moveit_core
    moveit_msgs
    moveit_ros_move_group
    moveit_ros_planning
    pluginlib
    rosconsole
    roscpp
    tf2_eigen
  ];

  colconRunDepends = [
    actionlib
    dynamic_reconfigure
    moveit_core
    moveit_msgs
    moveit_ros_move_group
    moveit_ros_planning
    pluginlib
    rosconsole
    roscpp
    tf2_eigen
  ];

  colconTestDepends = [
  ];
}
