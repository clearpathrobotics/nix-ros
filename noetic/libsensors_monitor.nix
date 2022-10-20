{
  catkin,
  diagnostic_updater,
  lm_sensors,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libsensors_monitor";
  pkgFinal = final.noetic.libsensors_monitor;
  src = srcs.linux_peripheral_interfaces.libsensors_monitor;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    lm_sensors
    roscpp
  ];

  colconRunDepends = [
    diagnostic_updater
    lm_sensors
    roscpp
  ];

  colconTestDepends = [
  ];
}
