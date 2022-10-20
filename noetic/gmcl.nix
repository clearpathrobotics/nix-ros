{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  geometry_msgs,
  map_server,
  message_filters,
  nav_msgs,
  python3Packages,
  rosbag,
  roscpp,
  rostest,
  sensor_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gmcl";
  pkgFinal = final.noetic.gmcl;
  src = srcs.gmcl.gmcl;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    message_filters
    nav_msgs
    rosbag
    roscpp
    sensor_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    rosbag
    roscpp
    sensor_msgs
    std_srvs
    tf2
    tf2_msgs
    tf2_ros
  ];

  colconTestDepends = [
    map_server
    python3Packages.pykdl
    rostest
  ];
}
