{
  boost,
  catkin,
  geometry_msgs,
  nav_msgs,
  roscpp,
  rostest,
  sensor_msgs,
  stage,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "stage_ros";
  pkgFinal = final.noetic.stage_ros;
  src = srcs.stage_ros.stage_ros;

  colconBuildDepends = [
    boost
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    rostest
    sensor_msgs
    stage
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    boost
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    stage
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
