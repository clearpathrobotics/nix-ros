{
  catkin,
  gmapping,
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
  name = "pr2_navigation_slam";
  pkgFinal = final.noetic.pr2_navigation_slam;
  src = srcs.pr2_navigation.pr2_navigation_slam;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gmapping
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
