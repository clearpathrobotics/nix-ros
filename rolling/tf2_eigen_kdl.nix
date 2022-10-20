{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  orocos_kdl_vendor,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_eigen_kdl";
  pkgFinal = final.rolling.tf2_eigen_kdl;
  src = srcs.geometry2.tf2_eigen_kdl;

  colconBuildDepends = [
    ament_cmake
    eigen
    orocos_kdl_vendor
    tf2
  ];

  colconRunDepends = [
    eigen
    orocos_kdl_vendor
    tf2
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
