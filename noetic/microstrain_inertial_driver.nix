{
  catkin,
  cmake_modules,
  curl,
  diagnostic_aggregator,
  diagnostic_updater,
  geometry_msgs,
  jq,
  mavros_msgs,
  message_generation,
  message_runtime,
  microstrain_inertial_msgs,
  nav_msgs,
  nmea_msgs,
  roscpp,
  roslint,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "microstrain_inertial_driver";
  pkgFinal = final.noetic.microstrain_inertial_driver;
  src = srcs.microstrain_inertial.microstrain_inertial_driver;

  colconBuildDepends = [
    catkin
    cmake_modules
    curl
    diagnostic_updater
    geometry_msgs
    jq
    mavros_msgs
    message_generation
    microstrain_inertial_msgs
    nav_msgs
    nmea_msgs
    roscpp
    roslint
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    cmake_modules
    diagnostic_aggregator
    diagnostic_updater
    geometry_msgs
    mavros_msgs
    message_runtime
    microstrain_inertial_msgs
    nav_msgs
    nmea_msgs
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
