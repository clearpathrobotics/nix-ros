{
  ament_cmake_copyright,
  ament_cmake_core,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_pycodestyle,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_pycodestyle";
  pkgFinal = final.rolling.ament_cmake_pycodestyle;
  src = srcs.ament_lint.ament_cmake_pycodestyle;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
  ];

  colconRunDepends = [
    ament_cmake_test
    ament_pycodestyle
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
  ];
}
