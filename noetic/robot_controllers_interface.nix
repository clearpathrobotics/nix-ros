{
  actionlib,
  catkin,
  pluginlib,
  robot_controllers_msgs,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_controllers_interface";
  pkgFinal = final.noetic.robot_controllers_interface;
  src = srcs.robot_controllers.robot_controllers_interface;

  colconBuildDepends = [
    actionlib
    catkin
    pluginlib
    robot_controllers_msgs
    roscpp
  ];

  colconRunDepends = [
    actionlib
    pluginlib
    robot_controllers_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
