{
  ament_cmake,
  ament_lint_common,
  rcl_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "composition_interfaces";
  pkgFinal = final.rolling.composition_interfaces;
  src = srcs.rcl_interfaces.composition_interfaces;

  colconBuildDepends = [
    ament_cmake
    rcl_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    rcl_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
