{
  angles,
  catkin,
  costmap_queue,
  dwb_critics,
  dwb_local_planner,
  geometry_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  nav_grid_iterators,
  pluginlib,
  python3Packages,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_dwb_critics";
  pkgFinal = final.noetic.mir_dwb_critics;
  src = srcs.mir_robot.mir_dwb_critics;

  colconBuildDepends = [
    angles
    catkin
    costmap_queue
    dwb_critics
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
    dwb_critics
    dwb_local_planner
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_grid_iterators
    pluginlib
    python3Packages.matplotlib
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
