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
  name = "laser_scan_densifier";
  pkgFinal = final.noetic.laser_scan_densifier;
  src = srcs.cob_driver.laser_scan_densifier;

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
