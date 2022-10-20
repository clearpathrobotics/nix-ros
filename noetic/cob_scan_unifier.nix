{
  catkin,
  laser_geometry,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_scan_unifier";
  pkgFinal = final.noetic.cob_scan_unifier;
  src = srcs.cob_driver.cob_scan_unifier;

  colconBuildDepends = [
    catkin
    laser_geometry
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    laser_geometry
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
