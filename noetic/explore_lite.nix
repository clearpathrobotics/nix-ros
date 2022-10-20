{
  actionlib,
  actionlib_msgs,
  catkin,
  costmap_2d,
  geometry_msgs,
  map_msgs,
  move_base_msgs,
  nav_msgs,
  roscpp,
  roslaunch,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "explore_lite";
  pkgFinal = final.noetic.explore_lite;
  src = srcs.m_explore.explore_lite;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    costmap_2d
    geometry_msgs
    map_msgs
    move_base_msgs
    nav_msgs
    roscpp
    std_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    costmap_2d
    geometry_msgs
    map_msgs
    move_base_msgs
    nav_msgs
    roscpp
    std_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
    roslaunch
  ];
}
