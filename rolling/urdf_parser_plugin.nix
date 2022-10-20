{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  urdfdom_headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdf_parser_plugin";
  pkgFinal = final.rolling.urdf_parser_plugin;
  src = srcs.urdf.urdf_parser_plugin;

  colconBuildDepends = [
    ament_cmake_ros
    urdfdom_headers
  ];

  colconRunDepends = [
    urdfdom_headers
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
