{
  catkin,
  geometry_msgs,
  message_filters,
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
  name = "laser_ortho_projector";
  pkgFinal = final.noetic.laser_ortho_projector;
  src = srcs.scan_tools.laser_ortho_projector;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_filters
    nodelet
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    message_filters
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
