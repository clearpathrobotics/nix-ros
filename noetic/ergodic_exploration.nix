{
  armadillo,
  catkin,
  geometry_msgs,
  map_server,
  nav_msgs,
  roscpp,
  rosunit,
  rviz,
  sensor_msgs,
  tf2,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ergodic_exploration";
  pkgFinal = final.noetic.ergodic_exploration;
  src = srcs.ergodic_exploration.ergodic_exploration;

  colconBuildDepends = [
    armadillo
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf2
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    armadillo
    map_server
    roscpp
    rviz
    tf2_ros
  ];

  colconTestDepends = [
    rosunit
  ];
}
