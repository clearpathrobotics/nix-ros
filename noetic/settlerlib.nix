{
  boost,
  calibration_msgs,
  catkin,
  rosconsole,
  rostime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "settlerlib";
  pkgFinal = final.noetic.settlerlib;
  src = srcs.calibration.settlerlib;

  colconBuildDepends = [
    boost
    calibration_msgs
    catkin
    rosconsole
    rostime
  ];

  colconRunDepends = [
    boost
    calibration_msgs
    rosconsole
    rostime
  ];

  colconTestDepends = [
  ];
}
