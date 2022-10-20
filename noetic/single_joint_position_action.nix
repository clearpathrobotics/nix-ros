{
  actionlib,
  catkin,
  pr2_controllers_msgs,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "single_joint_position_action";
  pkgFinal = final.noetic.single_joint_position_action;
  src = srcs.pr2_controllers.single_joint_position_action;

  colconBuildDepends = [
    actionlib
    catkin
    pr2_controllers_msgs
    roscpp
  ];

  colconRunDepends = [
    actionlib
    pr2_controllers_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
