{
  catkin,
  message_generation,
  message_runtime,
  nav_msgs,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "map_msgs";
  pkgFinal = final.noetic.map_msgs;
  src = srcs.navigation_msgs.map_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    nav_msgs
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    nav_msgs
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
