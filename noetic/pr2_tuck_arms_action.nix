{
  actionlib,
  actionlib_msgs,
  catkin,
  pr2_common_action_msgs,
  pr2_controllers_msgs,
  rospy,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_tuck_arms_action";
  pkgFinal = final.noetic.pr2_tuck_arms_action;
  src = srcs.pr2_common_actions.pr2_tuck_arms_action;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    pr2_common_action_msgs
    pr2_controllers_msgs
    rospy
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    pr2_common_action_msgs
    pr2_controllers_msgs
    rospy
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
