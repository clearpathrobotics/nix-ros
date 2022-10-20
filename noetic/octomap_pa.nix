{
  catkin,
  laser_geometry,
  message_generation,
  message_runtime,
  octomap_msgs,
  octomap_pa_msgs,
  octomap_ros,
  parameter_pa,
  pcl,
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
  name = "octomap_pa";
  pkgFinal = final.noetic.octomap_pa;
  src = srcs.octomap_pa.octomap_pa;

  colconBuildDepends = [
    catkin
    laser_geometry
    message_generation
    octomap_msgs
    octomap_pa_msgs
    octomap_ros
    parameter_pa
    pcl
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    laser_geometry
    message_runtime
    octomap_msgs
    octomap_pa_msgs
    octomap_ros
    parameter_pa
    pcl
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
