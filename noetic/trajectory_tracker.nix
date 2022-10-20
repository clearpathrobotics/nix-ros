{
  catkin,
  dynamic_reconfigure,
  eigen,
  geometry_msgs,
  interactive_markers,
  nav_msgs,
  neonavigation_common,
  roscpp,
  roslint,
  rostest,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  trajectory_tracker_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "trajectory_tracker";
  pkgFinal = final.noetic.trajectory_tracker;
  src = srcs.neonavigation.trajectory_tracker;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    eigen
    geometry_msgs
    interactive_markers
    nav_msgs
    neonavigation_common
    roscpp
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trajectory_tracker_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    eigen
    geometry_msgs
    interactive_markers
    nav_msgs
    neonavigation_common
    roscpp
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trajectory_tracker_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
