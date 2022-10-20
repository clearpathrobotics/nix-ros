{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "soccer_geometry_msgs";
  pkgFinal = final.rolling.soccer_geometry_msgs;
  src = srcs.soccer_interfaces.soccer_geometry_msgs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rosidl_default_generators
  ];

  colconRunDepends = [
    geometry_msgs
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
