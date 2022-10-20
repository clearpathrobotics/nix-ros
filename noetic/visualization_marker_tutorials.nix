{
  catkin,
  roscpp,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visualization_marker_tutorials";
  pkgFinal = final.noetic.visualization_marker_tutorials;
  src = srcs.visualization_tutorials.visualization_marker_tutorials;

  colconBuildDepends = [
    catkin
    roscpp
    visualization_msgs
  ];

  colconRunDepends = [
    roscpp
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
