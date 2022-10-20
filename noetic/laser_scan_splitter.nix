{
  catkin,
  nodelet,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_scan_splitter";
  pkgFinal = final.noetic.laser_scan_splitter;
  src = srcs.scan_tools.laser_scan_splitter;

  colconBuildDepends = [
    catkin
    nodelet
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    nodelet
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
