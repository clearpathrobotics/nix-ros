{
  ament_cmake,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "visualization_msgs";
  pkgFinal = final.rolling.visualization_msgs;
  src = srcs.common_interfaces.visualization_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rosidl_default_generators
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rosidl_default_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
