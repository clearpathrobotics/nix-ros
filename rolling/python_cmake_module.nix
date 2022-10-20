{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  python3,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "python_cmake_module";
  pkgFinal = final.rolling.python_cmake_module;
  src = srcs.python_cmake_module.python_cmake_module;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    python3
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
