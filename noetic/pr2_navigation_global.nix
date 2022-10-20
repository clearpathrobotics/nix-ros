{
  amcl,
  catkin,
  joint_trajectory_generator,
  move_base,
  pr2_machine,
  pr2_move_base,
  pr2_navigation_config,
  pr2_tuck_arms_action,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_navigation_global";
  pkgFinal = final.noetic.pr2_navigation_global;
  src = srcs.pr2_navigation.pr2_navigation_global;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    joint_trajectory_generator
    move_base
    pr2_machine
    pr2_move_base
    pr2_navigation_config
    pr2_tuck_arms_action
    topic_tools
  ];

  colconTestDepends = [
  ];
}
