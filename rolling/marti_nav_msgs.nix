{
  ament_cmake,
  builtin_interfaces,
  geographic_msgs,
  geometry_msgs,
  marti_common_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "marti_nav_msgs";
  pkgFinal = final.rolling.marti_nav_msgs;
  src = srcs.marti_messages.marti_nav_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geographic_msgs
    geometry_msgs
    marti_common_msgs
    rosidl_default_generators
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geographic_msgs
    geometry_msgs
    marti_common_msgs
    rosidl_default_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
