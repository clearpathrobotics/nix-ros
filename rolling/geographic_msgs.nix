{
  ament_cmake,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,
  unique_identifier_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geographic_msgs";
  pkgFinal = final.rolling.geographic_msgs;
  src = srcs.geographic_info.geographic_msgs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rosidl_default_generators
    std_msgs
    unique_identifier_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rosidl_default_runtime
    std_msgs
    unique_identifier_msgs
  ];

  colconTestDepends = [
  ];
}
