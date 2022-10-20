{
  catkin,
  geographic_msgs,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "auv_msgs";
  pkgFinal = final.noetic.auv_msgs;
  src = srcs.auv_msgs.auv_msgs;

  colconBuildDepends = [
    catkin
    geographic_msgs
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geographic_msgs
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
