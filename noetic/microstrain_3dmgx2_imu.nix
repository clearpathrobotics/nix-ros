{
  catkin,
  diagnostic_updater,
  log4cxx,
  message_generation,
  message_runtime,
  roscpp,
  self_test,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "microstrain_3dmgx2_imu";
  pkgFinal = final.noetic.microstrain_3dmgx2_imu;
  src = srcs.microstrain_3dmgx2_imu.microstrain_3dmgx2_imu;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    log4cxx
    message_generation
    roscpp
    self_test
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    diagnostic_updater
    log4cxx
    message_runtime
    roscpp
    self_test
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
