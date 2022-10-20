{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  bullet,
  geometry_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_bullet";
  pkgFinal = final.rolling.tf2_bullet;
  src = srcs.geometry2.tf2_bullet;

  colconBuildDepends = [
    ament_cmake
    bullet
    geometry_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    bullet
    geometry_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
