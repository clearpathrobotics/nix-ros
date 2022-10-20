{
  catkin,
  interactive_markers,
  roscpp,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "interactive_marker_tutorials";
  pkgFinal = final.noetic.interactive_marker_tutorials;
  src = srcs.visualization_tutorials.interactive_marker_tutorials;

  colconBuildDepends = [
    catkin
    interactive_markers
    roscpp
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    interactive_markers
    roscpp
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
