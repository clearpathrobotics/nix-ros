{
  catkin,
  geometry_msgs,
  interactive_markers,
  roscpp,
  rviz,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_interactive_teleop";
  pkgFinal = final.noetic.cob_interactive_teleop;
  src = srcs.cob_command_tools.cob_interactive_teleop;

  colconBuildDepends = [
    catkin
    geometry_msgs
    interactive_markers
    roscpp
    std_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    interactive_markers
    roscpp
    rviz
    std_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
