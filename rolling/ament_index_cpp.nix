{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_index_cpp";
  pkgFinal = final.rolling.ament_index_cpp;
  src = srcs.ament_index.ament_index_cpp;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
