{
  ament_cmake,
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
  name = "tf2_msgs";
  pkgFinal = final.rolling.tf2_msgs;
  src = srcs.geometry2.tf2_msgs;

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
    ament_lint_common
  ];
}
