{
  boost,
  catkin,
  diagnostic_updater,
  odva_ethernetip,
  rosconsole_bridge,
  roscpp,
  roslaunch,
  rosunit,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "omron_os32c_driver";
  pkgFinal = final.noetic.omron_os32c_driver;
  src = srcs.omron_os32c_driver.omron_os32c_driver;

  colconBuildDepends = [
    boost
    catkin
    diagnostic_updater
    odva_ethernetip
    rosconsole_bridge
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    boost
    diagnostic_updater
    odva_ethernetip
    rosconsole_bridge
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    roslaunch
    rosunit
  ];
}
