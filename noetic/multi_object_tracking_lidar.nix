{
  catkin,
  cv_bridge,
  pcl,
  pcl_ros,
  roscpp,
  sensor_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "multi_object_tracking_lidar";
  pkgFinal = final.noetic.multi_object_tracking_lidar;
  src = srcs.multi_object_tracking_lidar.multi_object_tracking_lidar;

  colconBuildDepends = [
    catkin
    cv_bridge
    pcl
    pcl_ros
    roscpp
    sensor_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    cv_bridge
    pcl
    pcl_ros
    roscpp
    sensor_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
