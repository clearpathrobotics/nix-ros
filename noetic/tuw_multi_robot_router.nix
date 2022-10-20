{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  geometry_msgs,
  nav_msgs,
  roscpp,
  tf,
  tuw_multi_robot_msgs,
  tuw_voronoi_graph,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_multi_robot_router";
  pkgFinal = final.noetic.tuw_multi_robot_router;
  src = srcs.tuw_multi_robot.tuw_multi_robot_router;

  colconBuildDepends = [
    catkin
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    roscpp
    tf
    tuw_multi_robot_msgs
    tuw_voronoi_graph
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    roscpp
    tf
    tuw_multi_robot_msgs
    tuw_voronoi_graph
  ];

  colconTestDepends = [
  ];
}
