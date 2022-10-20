{
  catkin,
  costmap_2d,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  tf,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2d_operator";
  pkgFinal = final.noetic.nav2d_operator;
  src = srcs.navigation_2d.nav2d_operator;

  colconBuildDepends = [
    catkin
    costmap_2d
    message_generation
    roscpp
    sensor_msgs
    tf
    tf2_ros
  ];

  colconRunDepends = [
    costmap_2d
    message_runtime
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
