{
  catkin,
  hector_map_tools,
  hector_marker_drawing,
  hector_nav_msgs,
  nav_msgs,
  roscpp,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_map_server";
  pkgFinal = final.noetic.hector_map_server;
  src = srcs.hector_slam.hector_map_server;

  colconBuildDepends = [
    catkin
    hector_map_tools
    hector_marker_drawing
    hector_nav_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconRunDepends = [
    hector_map_tools
    hector_marker_drawing
    hector_nav_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconTestDepends = [
  ];
}
