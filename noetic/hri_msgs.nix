{
  catkin,
  message_generation,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hri_msgs";
  pkgFinal = final.noetic.hri_msgs;
  src = srcs.hri_msgs.hri_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    sensor_msgs
  ];

  colconRunDepends = [
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
