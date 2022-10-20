{
  catkin,
  geographic_msgs,
  geometry_msgs,
  marti_common_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marti_nav_msgs";
  pkgFinal = final.noetic.marti_nav_msgs;
  src = srcs.marti_messages.marti_nav_msgs;

  colconBuildDepends = [
    catkin
    geographic_msgs
    geometry_msgs
    marti_common_msgs
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geographic_msgs
    geometry_msgs
    marti_common_msgs
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
