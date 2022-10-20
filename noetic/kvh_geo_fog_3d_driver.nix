{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  geometry_msgs,
  kvh_geo_fog_3d_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  roslint,
  rosunit,
  sensor_msgs,
  std_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kvh_geo_fog_3d_driver";
  pkgFinal = final.noetic.kvh_geo_fog_3d_driver;
  src = srcs.kvh_geo_fog_3d.kvh_geo_fog_3d_driver;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    kvh_geo_fog_3d_msgs
    message_generation
    nav_msgs
    roscpp
    roslint
    sensor_msgs
    std_msgs
    tf2_ros
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    kvh_geo_fog_3d_msgs
    message_generation
    message_runtime
    nav_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rosunit
  ];
}
