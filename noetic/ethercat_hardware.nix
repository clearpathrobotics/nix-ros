{
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  log4cxx,
  message_generation,
  message_runtime,
  pluginlib,
  pr2_hardware_interface,
  pr2_msgs,
  realtime_tools,
  roscpp,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ethercat_hardware";
  pkgFinal = final.noetic.ethercat_hardware;
  src = srcs.pr2_ethercat_drivers.ethercat_hardware;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    diagnostic_updater
    log4cxx
    message_generation
    pluginlib
    pr2_hardware_interface
    pr2_msgs
    realtime_tools
    roscpp
    tinyxml
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    log4cxx
    message_runtime
    pluginlib
    pr2_hardware_interface
    pr2_msgs
    realtime_tools
    roscpp
    tinyxml
  ];

  colconTestDepends = [
  ];
}
