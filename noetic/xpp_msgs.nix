{
  catkin,
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
  name = "xpp_msgs";
  pkgFinal = final.noetic.xpp_msgs;
  src = srcs.xpp.xpp_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_generation
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
