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
  name = "stereo_msgs";
  pkgFinal = final.noetic.stereo_msgs;
  src = srcs.common_msgs.stereo_msgs;

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
