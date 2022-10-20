{
  actionlib,
  catkin,
  control_msgs,
  moveit_core,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_simple_controller_manager";
  pkgFinal = final.noetic.moveit_simple_controller_manager;
  src = srcs.moveit.moveit_simple_controller_manager;

  colconBuildDepends = [
    actionlib
    catkin
    control_msgs
    moveit_core
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    actionlib
    control_msgs
    moveit_core
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
