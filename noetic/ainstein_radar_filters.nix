{
  ainstein_radar_msgs,
  catkin,
  nodelet,
  pcl_ros,
  roscpp,
  tf2_eigen,
  tf2_sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ainstein_radar_filters";
  pkgFinal = final.noetic.ainstein_radar_filters;
  src = srcs.ainstein_radar.ainstein_radar_filters;

  colconBuildDepends = [
    ainstein_radar_msgs
    catkin
    nodelet
    pcl_ros
    roscpp
    tf2_eigen
    tf2_sensor_msgs
  ];

  colconRunDepends = [
    ainstein_radar_msgs
    nodelet
    pcl_ros
    roscpp
    tf2_eigen
    tf2_sensor_msgs
  ];

  colconTestDepends = [
  ];
}
