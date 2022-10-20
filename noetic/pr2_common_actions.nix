{
  catkin,
  joint_trajectory_action_tools,
  joint_trajectory_generator,
  pr2_arm_move_ik,
  pr2_common_action_msgs,
  pr2_tilt_laser_interface,
  pr2_tuck_arms_action,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_common_actions";
  pkgFinal = final.noetic.pr2_common_actions;
  src = srcs.pr2_common_actions.pr2_common_actions;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_trajectory_action_tools
    joint_trajectory_generator
    pr2_arm_move_ik
    pr2_common_action_msgs
    pr2_tilt_laser_interface
    pr2_tuck_arms_action
  ];

  colconTestDepends = [
  ];
}
