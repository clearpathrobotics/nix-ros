{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  eigen3_cmake_module,
  git,
  orocos-kdl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "orocos_kdl_vendor";
  pkgFinal = final.rolling.orocos_kdl_vendor;
  src = srcs.orocos_kdl_vendor.orocos_kdl_vendor;

  colconBuildDepends = [
    ament_cmake
    eigen
    eigen3_cmake_module
    git
    orocos-kdl
  ];

  colconRunDepends = [
    eigen
    eigen3_cmake_module
    orocos-kdl
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
