{
  ament_cmake,
  ament_lint_common,
  nav_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "map_msgs";
  pkgFinal = final.rolling.map_msgs;
  src = srcs.navigation_msgs.map_msgs;

  colconBuildDepends = [
    ament_cmake
    nav_msgs
    rosidl_default_generators
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    nav_msgs
    rosidl_default_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
