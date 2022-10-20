{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  orocos_kdl_vendor,
  rcutils,
  urdf,
  urdfdom_headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kdl_parser";
  pkgFinal = final.rolling.kdl_parser;
  src = srcs.kdl_parser.kdl_parser;

  colconBuildDepends = [
    ament_cmake_ros
    orocos_kdl_vendor
    rcutils
    urdf
    urdfdom_headers
  ];

  colconRunDepends = [
    orocos_kdl_vendor
    rcutils
    urdf
    urdfdom_headers
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
