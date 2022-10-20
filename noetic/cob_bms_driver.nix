{
  catkin,
  cob_msgs,
  cob_srvs,
  diagnostic_msgs,
  diagnostic_updater,
  python3Packages,
  roscpp,
  rospy,
  sensor_msgs,
  socketcan_interface,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_bms_driver";
  pkgFinal = final.noetic.cob_bms_driver;
  src = srcs.cob_driver.cob_bms_driver;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    diagnostic_updater
    roscpp
    socketcan_interface
    std_msgs
  ];

  colconRunDepends = [
    cob_msgs
    cob_srvs
    diagnostic_msgs
    diagnostic_updater
    python3Packages.numpy
    roscpp
    rospy
    sensor_msgs
    socketcan_interface
    std_msgs
  ];

  colconTestDepends = [
  ];
}
