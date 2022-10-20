{
  ament_cmake_google_benchmark,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  pluginlib,
  tinyxml2_vendor,
  urdf_parser_plugin,
  urdfdom,
  urdfdom_headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdf";
  pkgFinal = final.rolling.urdf;
  src = srcs.urdf.urdf;

  colconBuildDepends = [
    ament_cmake_ros
    pluginlib
    tinyxml2_vendor
    urdf_parser_plugin
    urdfdom
    urdfdom_headers
  ];

  colconRunDepends = [
    pluginlib
    tinyxml2_vendor
    urdf_parser_plugin
    urdfdom
    urdfdom_headers
  ];

  colconTestDepends = [
    ament_cmake_google_benchmark
    ament_lint_auto
    ament_lint_common
  ];
}
