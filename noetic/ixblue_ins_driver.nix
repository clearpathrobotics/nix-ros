{
  boost,
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  ixblue_ins_msgs,
  ixblue_stdbin_decoder,
  libpcap,
  nav_msgs,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ixblue_ins_driver";
  pkgFinal = final.noetic.ixblue_ins_driver;
  src = srcs.ixblue_ins_stdbin_driver.ixblue_ins_driver;

  colconBuildDepends = [
    boost
    catkin
    diagnostic_msgs
    diagnostic_updater
    ixblue_ins_msgs
    ixblue_stdbin_decoder
    nav_msgs
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    boost
    diagnostic_msgs
    diagnostic_updater
    ixblue_ins_msgs
    ixblue_stdbin_decoder
    nav_msgs
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    boost
    libpcap
  ];
}
