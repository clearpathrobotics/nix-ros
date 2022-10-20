{
  boost,
  catkin,
  diagnostic_msgs,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_sick_lms1xx";
  pkgFinal = final.noetic.cob_sick_lms1xx;
  src = srcs.cob_driver.cob_sick_lms1xx;

  colconBuildDepends = [
    boost
    catkin
    diagnostic_msgs
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    boost
    diagnostic_msgs
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
