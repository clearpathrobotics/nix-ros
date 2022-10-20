{
  ament_cmake_copyright,
  ament_cmake_core,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_mypy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_mypy";
  pkgFinal = final.rolling.ament_cmake_mypy;
  src = srcs.ament_lint.ament_cmake_mypy;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
  ];

  colconRunDepends = [
    ament_cmake_test
    ament_mypy
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
  ];
}
