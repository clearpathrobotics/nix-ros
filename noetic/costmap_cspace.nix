{
  catkin,
  costmap_cspace_msgs,
  geometry_msgs,
  laser_geometry,
  nav_msgs,
  neonavigation_common,
  roscpp,
  roslint,
  rostest,
  sensor_msgs,
  tf2_geometry_msgs,
  tf2_ros,
  tf2_sensor_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "costmap_cspace";
  pkgFinal = final.noetic.costmap_cspace;
  src = srcs.neonavigation.costmap_cspace;

  colconBuildDepends = [
    catkin
    costmap_cspace_msgs
    geometry_msgs
    laser_geometry
    nav_msgs
    neonavigation_common
    roscpp
    sensor_msgs
    tf2_geometry_msgs
    tf2_ros
    tf2_sensor_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    costmap_cspace_msgs
    geometry_msgs
    laser_geometry
    nav_msgs
    neonavigation_common
    roscpp
    sensor_msgs
    tf2_geometry_msgs
    tf2_ros
    tf2_sensor_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
