{
  actionlib,
  actionlib_msgs,
  catkin,
  dynamic_reconfigure,
  move_base_msgs,
  pr2_common_action_msgs,
  pr2_controllers_msgs,
  pr2_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_move_base";
  pkgFinal = final.noetic.pr2_move_base;
  src = srcs.pr2_navigation.pr2_move_base;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    dynamic_reconfigure
    move_base_msgs
    pr2_common_action_msgs
    pr2_controllers_msgs
    pr2_msgs
    rospy
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    dynamic_reconfigure
    move_base_msgs
    pr2_common_action_msgs
    pr2_controllers_msgs
    pr2_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
