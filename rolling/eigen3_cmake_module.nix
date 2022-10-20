{
  ament_cmake,
  ament_cmake_copyright,
  ament_cmake_lint_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eigen3_cmake_module";
  pkgFinal = final.rolling.eigen3_cmake_module;
  src = srcs.eigen3_cmake_module.eigen3_cmake_module;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_lint_cmake
  ];
}
