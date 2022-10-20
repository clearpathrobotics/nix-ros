{
  catkin,
  geometry_msgs,
  laser_geometry,
  message_generation,
  message_runtime,
  nav_msgs,
  octomap_pa,
  parameter_pa,
  pcdfilter_pa,
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
  name = "nearfield_map";
  pkgFinal = final.noetic.nearfield_map;
  src = srcs.nearfield_map.nearfield_map;

  colconBuildDepends = [
    catkin
    geometry_msgs
    laser_geometry
    message_generation
    nav_msgs
    octomap_pa
    parameter_pa
    pcdfilter_pa
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    laser_geometry
    message_runtime
    nav_msgs
    octomap_pa
    parameter_pa
    pcdfilter_pa
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
