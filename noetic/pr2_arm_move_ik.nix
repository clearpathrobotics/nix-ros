{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  pr2_common_action_msgs,
  pr2_controllers_msgs,
  roscpp,
  tf,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_arm_move_ik";
  pkgFinal = final.noetic.pr2_arm_move_ik;
  src = srcs.pr2_common_actions.pr2_arm_move_ik;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    pr2_common_action_msgs
    pr2_controllers_msgs
    roscpp
    tf
    urdf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    pr2_common_action_msgs
    pr2_controllers_msgs
    roscpp
    tf
    urdf
  ];

  colconTestDepends = [
  ];
}
