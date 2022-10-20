{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  octomap_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_mapping";
  pkgFinal = final.rolling.octomap_mapping;
  src = srcs.octomap_mapping.octomap_mapping;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    octomap_server
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
