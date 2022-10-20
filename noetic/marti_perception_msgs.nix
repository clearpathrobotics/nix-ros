{
  catkin,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marti_perception_msgs";
  pkgFinal = final.noetic.marti_perception_msgs;
  src = srcs.marti_messages.marti_perception_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
