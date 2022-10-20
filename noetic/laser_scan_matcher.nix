{
  catkin,
  csm,
  geometry_msgs,
  nav_msgs,
  nodelet,
  pcl,
  pcl_conversions,
  pcl_ros,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_scan_matcher";
  pkgFinal = final.noetic.laser_scan_matcher;
  src = srcs.scan_tools.laser_scan_matcher;

  colconBuildDepends = [
    catkin
    csm
    geometry_msgs
    nav_msgs
    nodelet
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    csm
    geometry_msgs
    nav_msgs
    nodelet
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
