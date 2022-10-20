{
  ament_cmake,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marti_sensor_msgs";
  pkgFinal = final.rolling.marti_sensor_msgs;
  src = srcs.marti_messages.marti_sensor_msgs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rosidl_default_generators
  ];

  colconRunDepends = [
    geometry_msgs
    rosidl_default_runtime
  ];

  colconTestDepends = [
  ];
}
