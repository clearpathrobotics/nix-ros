{
  ament_cmake_core,
  ament_cmake_test,
  ament_lint_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_lint_cmake";
  pkgFinal = final.rolling.ament_cmake_lint_cmake;
  src = srcs.ament_lint.ament_cmake_lint_cmake;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
    ament_lint_cmake
  ];

  colconRunDepends = [
    ament_cmake_test
    ament_lint_cmake
  ];

  colconTestDepends = [
  ];
}
