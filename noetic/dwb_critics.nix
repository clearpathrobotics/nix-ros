{
  angles,
  catkin,
  costmap_queue,
  dwb_local_planner,
  geometry_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  nav_grid_iterators,
  pluginlib,
  roscpp,
  roslint,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dwb_critics";
  pkgFinal = final.noetic.dwb_critics;
  src = srcs.robot_navigation.dwb_critics;

  colconBuildDepends = [
    angles
    catkin
    costmap_queue
    dwb_local_planner
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid_iterators
    pluginlib
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    angles
    costmap_queue
    dwb_local_planner
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid_iterators
    pluginlib
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
