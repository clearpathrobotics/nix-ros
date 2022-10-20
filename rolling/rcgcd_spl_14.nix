{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcgcd_spl_14";
  pkgFinal = final.rolling.rcgcd_spl_14;
  src = srcs.gc_spl.rcgcd_spl_14;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
