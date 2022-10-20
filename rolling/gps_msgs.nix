{
  ament_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gps_msgs";
  pkgFinal = final.rolling.gps_msgs;
  src = srcs.gps_umd.gps_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
