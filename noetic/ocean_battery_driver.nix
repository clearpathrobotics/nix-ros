{
  boost,
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  log4cxx,
  pr2_msgs,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ocean_battery_driver";
  pkgFinal = final.noetic.ocean_battery_driver;
  src = srcs.pr2_power_drivers.ocean_battery_driver;

  colconBuildDepends = [
    boost
    catkin
    diagnostic_msgs
    diagnostic_updater
    log4cxx
    pr2_msgs
    roscpp
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    log4cxx
    pr2_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
