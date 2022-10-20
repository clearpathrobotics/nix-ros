{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tlsf";
  pkgFinal = final.rolling.tlsf;
  src = srcs.tlsf.tlsf;

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
