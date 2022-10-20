{
  ament_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marti_perception_msgs";
  pkgFinal = final.rolling.marti_perception_msgs;
  src = srcs.marti_messages.marti_perception_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    rosidl_default_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
