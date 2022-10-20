{
  ament_cmake_ros,
  rosidl_default_generators,
  sensor_msgs,
  std_msgs,
  ublox_serialization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_msgs";
  pkgFinal = final.rolling.ublox_msgs;
  src = srcs.ublox.ublox_msgs;

  colconBuildDepends = [
    ament_cmake_ros
    rosidl_default_generators
    sensor_msgs
    std_msgs
    ublox_serialization
  ];

  colconRunDepends = [
    sensor_msgs
    std_msgs
    ublox_serialization
  ];

  colconTestDepends = [
  ];
}
