{
  ament_cmake_core,
  ament_cmake_lint_cmake,
  ament_cmake_test,
  ament_copyright,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_copyright";
  pkgFinal = final.rolling.ament_cmake_copyright;
  src = srcs.ament_lint.ament_cmake_copyright;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_test
    ament_copyright
  ];

  colconRunDepends = [
    ament_cmake_test
    ament_copyright
  ];

  colconTestDepends = [
    ament_cmake_lint_cmake
  ];
}
