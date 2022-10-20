{
  ament_cmake,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,
  ament_lint_auto,
  assimp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_assimp_vendor";
  pkgFinal = final.rolling.rviz_assimp_vendor;
  src = srcs.rviz.rviz_assimp_vendor;

  colconBuildDepends = [
    ament_cmake
    assimp
  ];

  colconRunDepends = [
    assimp
  ];

  colconTestDepends = [
    ament_cmake_lint_cmake
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
