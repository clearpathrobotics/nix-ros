{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_nodl";
  pkgFinal = final.rolling.ament_nodl;
  src = srcs.ament_nodl.ament_nodl;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
