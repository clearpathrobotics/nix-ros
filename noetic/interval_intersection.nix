{
  actionlib,
  actionlib_msgs,
  boost,
  calibration_msgs,
  catkin,
  geometry_msgs,
  rosconsole,
  roscpp,
  roscpp_serialization,
  rostime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "interval_intersection";
  pkgFinal = final.noetic.interval_intersection;
  src = srcs.calibration.interval_intersection;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    boost
    calibration_msgs
    catkin
    geometry_msgs
    rosconsole
    roscpp
    roscpp_serialization
    rostime
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    boost
    calibration_msgs
    geometry_msgs
    rosconsole
    roscpp
    roscpp_serialization
    rostime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
