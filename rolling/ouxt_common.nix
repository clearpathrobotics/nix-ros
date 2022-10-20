{
  ament_cmake,
  ouxt_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ouxt_common";
  pkgFinal = final.rolling.ouxt_common;
  src = srcs.ouxt_common.ouxt_common;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ouxt_lint_common
  ];

  colconTestDepends = [
  ];
}
