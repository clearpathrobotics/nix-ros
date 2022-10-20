{
  ament_cmake,
  ament_lint_common,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "shape_msgs";
  pkgFinal = final.rolling.shape_msgs;
  src = srcs.common_interfaces.shape_msgs;

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
    ament_lint_common
  ];
}
