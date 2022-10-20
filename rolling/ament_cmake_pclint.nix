{
  ament_cmake_copyright,
  ament_cmake_core,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_pclint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_pclint";
  pkgFinal = final.rolling.ament_cmake_pclint;
  src = srcs.ament_lint.ament_cmake_pclint;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
  ];

  colconRunDepends = [
    ament_cmake_test
    ament_pclint
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
  ];
}
