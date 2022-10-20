{
  catkin,
  cv_bridge,
  image_transport,
  laser_geometry,
  message_generation,
  message_runtime,
  parameter_pa,
  pcl_conversions,
  pcl_ros,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pcdfilter_pa";
  pkgFinal = final.noetic.pcdfilter_pa;
  src = srcs.pcdfilter_pa.pcdfilter_pa;

  colconBuildDepends = [
    catkin
    cv_bridge
    image_transport
    laser_geometry
    message_generation
    parameter_pa
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    cv_bridge
    image_transport
    laser_geometry
    message_runtime
    parameter_pa
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
