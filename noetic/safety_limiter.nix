{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  eigen,
  geometry_msgs,
  nav_msgs,
  neonavigation_common,
  pcl,
  pcl_conversions,
  pcl_ros,
  roscpp,
  roslint,
  rostest,
  safety_limiter_msgs,
  sensor_msgs,
  std_msgs,
  tf2_geometry_msgs,
  tf2_ros,
  tf2_sensor_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "safety_limiter";
  pkgFinal = final.noetic.safety_limiter;
  src = srcs.neonavigation.safety_limiter;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    eigen
    geometry_msgs
    neonavigation_common
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    safety_limiter_msgs
    sensor_msgs
    std_msgs
    tf2_ros
    tf2_sensor_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    eigen
    geometry_msgs
    neonavigation_common
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    safety_limiter_msgs
    sensor_msgs
    std_msgs
    tf2_ros
    tf2_sensor_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
    nav_msgs
    roslint
    rostest
    tf2_geometry_msgs
  ];
}
