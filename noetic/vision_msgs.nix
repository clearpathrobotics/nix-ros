{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  rosunit,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vision_msgs";
  pkgFinal = final.noetic.vision_msgs;
  src = srcs.vision_msgs.vision_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    rosunit
  ];
}
