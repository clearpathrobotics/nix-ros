{
  catkin,
  interactive_markers,
  roscpp,
  roslaunch,
  roslint,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "interactive_marker_twist_server";
  pkgFinal = final.noetic.interactive_marker_twist_server;
  src = srcs.interactive_marker_twist_server.interactive_marker_twist_server;

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
    roslaunch
    roslint
  ];
}
