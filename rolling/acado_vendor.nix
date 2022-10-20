{
  ament_cmake,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,
  ament_lint_auto,
  git,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "acado_vendor";
  pkgFinal = final.rolling.acado_vendor;
  src = srcs.acado_vendor.acado_vendor;

  colconBuildDepends = [
    ament_cmake
    git
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_lint_cmake
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
