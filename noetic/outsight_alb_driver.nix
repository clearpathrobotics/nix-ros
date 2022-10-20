{
  catkin,
  curl,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  nlohmann_json,
  pointcloud_to_laserscan,
  roscpp,
  rostest,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "outsight_alb_driver";
  pkgFinal = final.noetic.outsight_alb_driver;
  src = srcs.outsight_alb_driver.outsight_alb_driver;

  colconBuildDepends = [
    catkin
    curl
    geometry_msgs
    message_generation
    nav_msgs
    nlohmann_json
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    curl
    geometry_msgs
    message_runtime
    nav_msgs
    nlohmann_json
    pointcloud_to_laserscan
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    rostest
  ];
}
