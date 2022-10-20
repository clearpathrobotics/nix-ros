{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcl_interfaces";
  pkgFinal = final.rolling.rcl_interfaces;
  src = srcs.rcl_interfaces.rcl_interfaces;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
