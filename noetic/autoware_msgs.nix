{
  catkin,
  geometry_msgs,
  jsk_recognition_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "autoware_msgs";
  pkgFinal = final.noetic.autoware_msgs;
  src = srcs.autoware_msgs.autoware_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    jsk_recognition_msgs
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    jsk_recognition_msgs
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
