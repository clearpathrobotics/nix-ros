{
  ament_cmake,
  ament_cmake_gtest,
  cv_bridge,
  eigen,
  geos,
  pkg-config,
  rclcpp,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_geometry_util";
  pkgFinal = final.rolling.swri_geometry_util;
  src = srcs.marti_common.swri_geometry_util;

  colconBuildDepends = [
    ament_cmake
    cv_bridge
    eigen
    geos
    pkg-config
    rclcpp
    tf2
  ];

  colconRunDepends = [
    cv_bridge
    eigen
    geos
    rclcpp
    tf2
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
