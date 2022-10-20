{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  rcutils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcpputils";
  pkgFinal = final.rolling.rcpputils;
  src = srcs.rcpputils.rcpputils;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_ros
    rcutils
  ];

  colconRunDepends = [
    rcutils
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
