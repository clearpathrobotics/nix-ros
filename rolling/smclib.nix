{
  ament_cmake,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "smclib";
  pkgFinal = final.rolling.smclib;
  src = srcs.bond_core.smclib;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
