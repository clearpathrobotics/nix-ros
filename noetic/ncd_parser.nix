{
  catkin,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ncd_parser";
  pkgFinal = final.noetic.ncd_parser;
  src = srcs.scan_tools.ncd_parser;

  colconBuildDepends = [
    catkin
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
