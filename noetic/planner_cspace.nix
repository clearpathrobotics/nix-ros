{
  actionlib,
  catkin,
  costmap_cspace,
  costmap_cspace_msgs,
  diagnostic_updater,
  geometry_msgs,
  map_server,
  move_base_msgs,
  nav_msgs,
  neonavigation_common,
  planner_cspace_msgs,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  trajectory_msgs,
  trajectory_tracker,
  trajectory_tracker_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "planner_cspace";
  pkgFinal = final.noetic.planner_cspace;
  src = srcs.neonavigation.planner_cspace;

  colconBuildDepends = [
    actionlib
    catkin
    costmap_cspace
    costmap_cspace_msgs
    diagnostic_updater
    geometry_msgs
    move_base_msgs
    nav_msgs
    neonavigation_common
    planner_cspace_msgs
    roscpp
    sensor_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
    trajectory_tracker_msgs
  ];

  colconRunDepends = [
    actionlib
    costmap_cspace
    costmap_cspace_msgs
    diagnostic_updater
    geometry_msgs
    move_base_msgs
    nav_msgs
    neonavigation_common
    planner_cspace_msgs
    roscpp
    sensor_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
    trajectory_tracker_msgs
  ];

  colconTestDepends = [
    map_server
    roslint
    rostest
    trajectory_tracker
  ];
}
