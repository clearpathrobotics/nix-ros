{
  ament_cmake_copyright,
  ament_cmake_core,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_export_dependencies,
  ament_cmake_flake8,
  ament_cmake_lint_cmake,
  ament_cmake_pep257,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_lint_common";
  pkgFinal = final.rolling.ament_lint_common;
  src = srcs.ament_lint.ament_lint_common;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_export_dependencies
  ];

  colconRunDepends = [
    ament_cmake_copyright
    ament_cmake_core
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_flake8
    ament_cmake_lint_cmake
    ament_cmake_pep257
    ament_cmake_uncrustify
    ament_cmake_xmllint
  ];

  colconTestDepends = [
  ];
}
