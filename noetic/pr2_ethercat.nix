{
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  ethercat_hardware,
  pr2_controller_manager,
  realtime_tools,
  roscpp,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_ethercat";
  pkgFinal = final.noetic.pr2_ethercat;
  src = srcs.pr2_robot.pr2_ethercat;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    diagnostic_updater
    ethercat_hardware
    pr2_controller_manager
    realtime_tools
    roscpp
    std_srvs
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    ethercat_hardware
    pr2_controller_manager
    realtime_tools
    roscpp
    std_srvs
  ];

  colconTestDepends = [
  ];
}
