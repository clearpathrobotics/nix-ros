{
  catkin,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,
  ublox_serialization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_msgs";
  pkgFinal = final.noetic.ublox_msgs;
  src = srcs.ublox.ublox_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    sensor_msgs
    std_msgs
    ublox_serialization
  ];

  colconRunDepends = [
    message_runtime
    sensor_msgs
    std_msgs
    ublox_serialization
  ];

  colconTestDepends = [
  ];
}
