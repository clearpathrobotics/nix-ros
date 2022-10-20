{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "soccer_object_msgs";
  pkgFinal = final.rolling.soccer_object_msgs;
  src = srcs.soccer_object_msgs.soccer_object_msgs;

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
    ament_lint_auto
    ament_lint_common
  ];
}
