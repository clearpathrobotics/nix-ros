{
  ament_cmake,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nmea_msgs";
  pkgFinal = final.rolling.nmea_msgs;
  src = srcs.nmea_msgs.nmea_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
