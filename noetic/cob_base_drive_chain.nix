{
  catkin,
  cob_canopen_motor,
  cob_generic_can,
  cob_utilities,
  control_msgs,
  diagnostic_msgs,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_base_drive_chain";
  pkgFinal = final.noetic.cob_base_drive_chain;
  src = srcs.cob_driver.cob_base_drive_chain;

  colconBuildDepends = [
    catkin
    cob_canopen_motor
    cob_generic_can
    cob_utilities
    control_msgs
    diagnostic_msgs
    message_generation
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    cob_canopen_motor
    cob_generic_can
    cob_utilities
    control_msgs
    diagnostic_msgs
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
