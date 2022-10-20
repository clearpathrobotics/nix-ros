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
  name = "splsm_7";
  pkgFinal = final.rolling.splsm_7;
  src = srcs.r2r_spl.splsm_7;

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
