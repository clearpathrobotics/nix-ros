{
  catkin,
  roscpp,
  roslib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "timestamp_tools";
  pkgFinal = final.noetic.timestamp_tools;
  src = srcs.driver_common.timestamp_tools;

  colconBuildDepends = [
    catkin
    roscpp
    roslib
  ];

  colconRunDepends = [
    roscpp
    roslib
  ];

  colconTestDepends = [
  ];
}
