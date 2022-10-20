{
  ament_cmake,
  builtin_interfaces,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marti_visualization_msgs";
  pkgFinal = final.rolling.marti_visualization_msgs;
  src = srcs.marti_messages.marti_visualization_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rosidl_default_generators
    sensor_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rosidl_default_runtime
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
