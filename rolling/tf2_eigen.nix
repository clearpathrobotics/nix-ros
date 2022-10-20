{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  geometry_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_eigen";
  pkgFinal = final.rolling.tf2_eigen;
  src = srcs.geometry2.tf2_eigen;

  colconBuildDepends = [
    ament_cmake
    eigen
    geometry_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    eigen
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
