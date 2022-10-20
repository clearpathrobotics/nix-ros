{
  camera_info_manager,
  catkin,
  cv_bridge,
  dynamic_reconfigure,
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
  name = "basler_tof";
  pkgFinal = final.noetic.basler_tof;
  src = srcs.basler_tof.basler_tof;

  colconBuildDepends = [
    camera_info_manager
    catkin
    cv_bridge
    dynamic_reconfigure
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    dynamic_reconfigure
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
