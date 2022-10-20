{
  ament_cmake,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_msgs";
  pkgFinal = final.rolling.octomap_msgs;
  src = srcs.octomap_msgs.octomap_msgs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
