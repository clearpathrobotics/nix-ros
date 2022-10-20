{
  canopen_402,
  catkin,
  pluginlib,
  socketcan_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_elmo_homing";
  pkgFinal = final.noetic.cob_elmo_homing;
  src = srcs.cob_driver.cob_elmo_homing;

  colconBuildDepends = [
    canopen_402
    catkin
    pluginlib
    socketcan_interface
  ];

  colconRunDepends = [
    canopen_402
    pluginlib
    socketcan_interface
  ];

  colconTestDepends = [
  ];
}
