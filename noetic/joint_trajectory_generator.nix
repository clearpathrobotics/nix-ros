{
  actionlib,
  angles,
  catkin,
  joint_trajectory_action,
  pr2_controllers_msgs,
  roscpp,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_trajectory_generator";
  pkgFinal = final.noetic.joint_trajectory_generator;
  src = srcs.pr2_common_actions.joint_trajectory_generator;

  colconBuildDepends = [
    actionlib
    angles
    catkin
    joint_trajectory_action
    pr2_controllers_msgs
    roscpp
    urdf
  ];

  colconRunDepends = [
    actionlib
    angles
    joint_trajectory_action
    pr2_controllers_msgs
    roscpp
    urdf
  ];

  colconTestDepends = [
  ];
}
