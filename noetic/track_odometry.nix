{
  catkin,
  eigen,
  geometry_msgs,
  message_filters,
  nav_msgs,
  neonavigation_common,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "track_odometry";
  pkgFinal = final.noetic.track_odometry;
  src = srcs.neonavigation.track_odometry;

  colconBuildDepends = [
    catkin
    eigen
    geometry_msgs
    message_filters
    nav_msgs
    neonavigation_common
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    message_filters
    nav_msgs
    neonavigation_common
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    trajectory_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
