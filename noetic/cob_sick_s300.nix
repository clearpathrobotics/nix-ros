{
  boost,
  catkin,
  diagnostic_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_sick_s300";
  pkgFinal = final.noetic.cob_sick_s300;
  src = srcs.cob_driver.cob_sick_s300;

  colconBuildDepends = [
    boost
    catkin
    diagnostic_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    boost
    diagnostic_msgs
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
