{
  catkin,
  geometry_msgs,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "polar_scan_matcher";
  pkgFinal = final.noetic.polar_scan_matcher;
  src = srcs.scan_tools.polar_scan_matcher;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
