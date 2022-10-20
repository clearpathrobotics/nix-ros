{
  ament_cmake,
  ament_cmake_clang_format,
  ament_cmake_copyright,
  ament_cmake_pep257,
  ament_cmake_xmllint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ouxt_lint_common";
  pkgFinal = final.rolling.ouxt_lint_common;
  src = srcs.ouxt_common.ouxt_lint_common;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake_clang_format
    ament_cmake_copyright
    ament_cmake_pep257
    ament_cmake_xmllint
  ];

  colconTestDepends = [
  ];
}
