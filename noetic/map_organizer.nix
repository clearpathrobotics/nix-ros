{
  catkin,
  eigen,
  geometry_msgs,
  map_organizer_msgs,
  map_server,
  nav_msgs,
  neonavigation_common,
  pcl,
  pcl_conversions,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "map_organizer";
  pkgFinal = final.noetic.map_organizer;
  src = srcs.neonavigation.map_organizer;

  colconBuildDepends = [
    catkin
    eigen
    geometry_msgs
    map_organizer_msgs
    map_server
    nav_msgs
    neonavigation_common
    pcl
    pcl_conversions
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    map_organizer_msgs
    map_server
    nav_msgs
    neonavigation_common
    pcl
    pcl_conversions
    roscpp
    sensor_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
