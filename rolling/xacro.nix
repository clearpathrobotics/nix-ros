{
  ament_cmake,
  ament_cmake_pytest,
  ament_index_python,
  ament_lint_auto,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xacro";
  pkgFinal = final.rolling.xacro;
  src = srcs.xacro.xacro;

  colconBuildDepends = [
    ament_cmake
    ament_index_python
    python3Packages.pyyaml
  ];

  colconRunDepends = [
    ament_index_python
    python3Packages.pyyaml
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
  ];
}
