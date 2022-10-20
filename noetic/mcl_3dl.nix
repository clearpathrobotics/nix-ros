{
  catkin,
  diagnostic_updater,
  eigen,
  geometry_msgs,
  mcl_3dl_msgs,
  nav_msgs,
  pcl_ros,
  roscpp,
  roslint,
  rostest,
  rosunit,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  tf2_sensor_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mcl_3dl";
  pkgFinal = final.noetic.mcl_3dl;
  src = srcs.mcl_3dl.mcl_3dl;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    eigen
    geometry_msgs
    mcl_3dl_msgs
    nav_msgs
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    tf2_sensor_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    eigen
    geometry_msgs
    mcl_3dl_msgs
    nav_msgs
    pcl_ros
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
    tf2_sensor_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
    rosunit
  ];
}
