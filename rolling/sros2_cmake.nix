{
  ament_cmake,
  ament_cmake_test,
  ament_lint_auto,
  ament_lint_common,
  ros2cli,
  sros2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sros2_cmake";
  pkgFinal = final.rolling.sros2_cmake;
  src = srcs.sros2.sros2_cmake;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_test
  ];

  colconRunDepends = [
    ros2cli
    sros2
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
