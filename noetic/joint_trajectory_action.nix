{
  actionlib,
  catkin,
  pr2_controllers_msgs,
  roscpp,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_trajectory_action";
  pkgFinal = final.noetic.joint_trajectory_action;
  src = srcs.pr2_controllers.joint_trajectory_action;

  colconBuildDepends = [
    actionlib
    catkin
    pr2_controllers_msgs
    roscpp
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    pr2_controllers_msgs
    roscpp
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
