{
  ament_cmake,
  ament_lint_common,
  geometry_msgs,
  rc_common_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  shape_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_reason_msgs";
  pkgFinal = final.rolling.rc_reason_msgs;
  src = srcs.rc_reason_clients.rc_reason_msgs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rc_common_msgs
    rosidl_default_generators
    shape_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rc_common_msgs
    rosidl_default_runtime
    shape_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
