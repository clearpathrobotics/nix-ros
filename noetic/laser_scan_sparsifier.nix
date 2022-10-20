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
  name = "laser_scan_sparsifier";
  pkgFinal = final.noetic.laser_scan_sparsifier;
  src = srcs.scan_tools.laser_scan_sparsifier;

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
