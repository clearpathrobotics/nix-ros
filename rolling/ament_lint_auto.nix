{
  ament_cmake_core,
  ament_cmake_test,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_lint_auto";
  pkgFinal = final.rolling.ament_lint_auto;
  src = srcs.ament_lint.ament_lint_auto;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_cmake_test
  ];

  colconTestDepends = [
  ];
}
