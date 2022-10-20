{
  catkin,
  dynamic_reconfigure,
  nav_msgs,
  nodelet,
  octomap_msgs,
  octomap_ros,
  pcl_conversions,
  pcl_ros,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_server";
  pkgFinal = final.noetic.octomap_server;
  src = srcs.octomap_mapping.octomap_server;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    nav_msgs
    nodelet
    octomap_msgs
    octomap_ros
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    visualization_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    nav_msgs
    nodelet
    octomap_msgs
    octomap_ros
    pcl_conversions
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
