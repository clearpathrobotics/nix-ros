{
  catkin,
  joint_trajectory_action,
  pr2_controllers_msgs,
  roslib,
  rospy,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_trajectory_action_tools";
  pkgFinal = final.noetic.joint_trajectory_action_tools;
  src = srcs.pr2_common_actions.joint_trajectory_action_tools;

  colconBuildDepends = [
    catkin
    joint_trajectory_action
    pr2_controllers_msgs
    roslib
    rospy
    trajectory_msgs
  ];

  colconRunDepends = [
    joint_trajectory_action
    pr2_controllers_msgs
    roslib
    rospy
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
