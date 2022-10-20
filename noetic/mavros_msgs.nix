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
  name = "mavros_msgs";
  pkgFinal = final.noetic.mavros_msgs;
  src = srcs.mavros.mavros_msgs;

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
