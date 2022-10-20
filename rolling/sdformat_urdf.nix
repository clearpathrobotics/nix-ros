{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  pluginlib,
  rcutils,
  sdformat_test_files,
  tinyxml2_vendor,
  urdf,
  urdf_parser_plugin,
  urdfdom-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sdformat_urdf";
  pkgFinal = final.rolling.sdformat_urdf;
  src = srcs.sdformat_urdf.sdformat_urdf;

  colconBuildDepends = [
    ament_cmake_ros
    pluginlib
    rcutils
    tinyxml2_vendor
    urdf
    urdf_parser_plugin
    urdfdom-headers
  ];

  colconRunDepends = [
    ament_cmake_ros
    pluginlib
    rcutils
    tinyxml2_vendor
    urdf
    urdf_parser_plugin
    urdfdom-headers
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    sdformat_test_files
  ];
}
