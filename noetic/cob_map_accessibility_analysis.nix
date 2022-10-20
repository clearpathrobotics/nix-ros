{
  boost,
  catkin,
  cob_3d_mapping_msgs,
  cv_bridge,
  geometry_msgs,
  image_transport,
  message_filters,
  message_generation,
  message_runtime,
  nav_msgs,
  opencv,
  pcl,
  pcl_ros,
  python3Packages,
  roscpp,
  rospy,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_map_accessibility_analysis";
  pkgFinal = final.noetic.cob_map_accessibility_analysis;
  src = srcs.cob_navigation.cob_map_accessibility_analysis;

  colconBuildDepends = [
    boost
    catkin
    cob_3d_mapping_msgs
    cv_bridge
    geometry_msgs
    image_transport
    message_filters
    message_generation
    nav_msgs
    opencv
    pcl
    pcl_ros
    python3Packages.setuptools
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    boost
    cob_3d_mapping_msgs
    cv_bridge
    geometry_msgs
    image_transport
    message_filters
    message_runtime
    nav_msgs
    opencv
    pcl
    pcl_ros
    roscpp
    rospy
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
