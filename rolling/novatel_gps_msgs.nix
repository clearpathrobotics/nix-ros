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
  name = "novatel_gps_msgs";
  pkgFinal = final.rolling.novatel_gps_msgs;
  src = srcs.novatel_gps_driver.novatel_gps_msgs;

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
