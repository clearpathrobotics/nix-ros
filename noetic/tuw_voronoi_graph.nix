{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  geometry_msgs,
  libsForQt5,
  nav_msgs,
  roscpp,
  tf,
  tuw_multi_robot_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_voronoi_graph";
  pkgFinal = final.noetic.tuw_voronoi_graph;
  src = srcs.tuw_multi_robot.tuw_voronoi_graph;

  colconBuildDepends = [
    catkin
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    libsForQt5.dxflib
    nav_msgs
    roscpp
    tf
    tuw_multi_robot_msgs
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    libsForQt5.dxflib
    nav_msgs
    roscpp
    tf
    tuw_multi_robot_msgs
  ];

  colconTestDepends = [
  ];
}
