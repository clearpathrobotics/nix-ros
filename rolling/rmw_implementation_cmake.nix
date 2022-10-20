{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw_implementation_cmake";
  pkgFinal = final.rolling.rmw_implementation_cmake;
  src = srcs.rmw.rmw_implementation_cmake;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
