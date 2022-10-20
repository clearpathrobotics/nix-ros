{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ur_msgs";
  pkgFinal = final.rolling.ur_msgs;
  src = srcs.ur_msgs.ur_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
