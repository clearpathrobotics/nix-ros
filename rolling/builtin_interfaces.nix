{
  ament_cmake,
  ament_lint_common,
  rosidl_core_generators,
  rosidl_core_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "builtin_interfaces";
  pkgFinal = final.rolling.builtin_interfaces;
  src = srcs.rcl_interfaces.builtin_interfaces;

  colconBuildDepends = [
    ament_cmake
    rosidl_core_generators
  ];

  colconRunDepends = [
    rosidl_core_runtime
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
