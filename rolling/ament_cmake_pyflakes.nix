{
  ament_cmake_copyright,
  ament_cmake_core,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_pyflakes,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_pyflakes";
  pkgFinal = final.rolling.ament_cmake_pyflakes;
  src = srcs.ament_lint.ament_cmake_pyflakes;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
  ];

  colconRunDepends = [
    ament_cmake_test
    ament_pyflakes
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
  ];
}
