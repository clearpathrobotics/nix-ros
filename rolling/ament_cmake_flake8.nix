{
  ament_cmake_copyright,
  ament_cmake_core,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_flake8,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_flake8";
  pkgFinal = final.rolling.ament_cmake_flake8;
  src = srcs.ament_lint.ament_cmake_flake8;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
  ];

  colconRunDepends = [
    ament_cmake_test
    ament_flake8
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
  ];
}
