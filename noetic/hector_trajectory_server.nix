{
  catkin,
  hector_map_tools,
  hector_nav_msgs,
  nav_msgs,
  roscpp,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_trajectory_server";
  pkgFinal = final.noetic.hector_trajectory_server;
  src = srcs.hector_slam.hector_trajectory_server;

  colconBuildDepends = [
    catkin
    hector_map_tools
    hector_nav_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconRunDepends = [
    hector_map_tools
    hector_nav_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconTestDepends = [
  ];
}
