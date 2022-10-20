{
  catkin,
  chomp_motion_planner,
  moveit_core,
  moveit_ros_planning_interface,
  pluginlib,
  roscpp,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_planners_chomp";
  pkgFinal = final.noetic.moveit_planners_chomp;
  src = srcs.moveit.moveit_planners_chomp;

  colconBuildDepends = [
    catkin
    chomp_motion_planner
    moveit_core
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    chomp_motion_planner
    moveit_core
    pluginlib
    roscpp
  ];

  colconTestDepends = [
    moveit_ros_planning_interface
    rostest
  ];
}
