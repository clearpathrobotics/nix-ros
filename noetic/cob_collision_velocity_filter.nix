{
  boost,
  catkin,
  cob_footprint_observer,
  costmap_2d,
  dynamic_reconfigure,
  geometry_msgs,
  nav_msgs,
  roscpp,
  tf,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_collision_velocity_filter";
  pkgFinal = final.noetic.cob_collision_velocity_filter;
  src = srcs.cob_control.cob_collision_velocity_filter;

  colconBuildDepends = [
    boost
    catkin
    cob_footprint_observer
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    roscpp
    tf
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    boost
    cob_footprint_observer
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    roscpp
    tf
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
