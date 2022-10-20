{
  ainstein_radar_filters,
  ainstein_radar_msgs,
  catkin,
  cv_bridge,
  image_geometry,
  image_transport,
  pcl_ros,
  roscpp,
  sensor_msgs,
  std_msgs,
  vision_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ainstein_radar_tools";
  pkgFinal = final.noetic.ainstein_radar_tools;
  src = srcs.ainstein_radar.ainstein_radar_tools;

  colconBuildDepends = [
    ainstein_radar_filters
    ainstein_radar_msgs
    catkin
    cv_bridge
    image_geometry
    image_transport
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    vision_msgs
  ];

  colconRunDepends = [
    ainstein_radar_filters
    ainstein_radar_msgs
    cv_bridge
    image_geometry
    image_transport
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    vision_msgs
  ];

  colconTestDepends = [
  ];
}
