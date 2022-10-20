{
  catkin,
  pr2_machine,
  pr2_teleop,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_navigation_teleop";
  pkgFinal = final.noetic.pr2_navigation_teleop;
  src = srcs.pr2_navigation.pr2_navigation_teleop;

  colconBuildDepends = [
    catkin
    pr2_machine
    pr2_teleop
    topic_tools
  ];

  colconRunDepends = [
    pr2_machine
    pr2_teleop
    topic_tools
  ];

  colconTestDepends = [
  ];
}
