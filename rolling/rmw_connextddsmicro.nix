{
  ament_cmake,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  rmw_connextdds_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmw_connextddsmicro";
  pkgFinal = final.rolling.rmw_connextddsmicro;
  src = srcs.rmw_connextdds.rmw_connextddsmicro;

  colconBuildDepends = [
    ament_cmake_ros
    rmw_connextdds_common
  ];

  colconRunDepends = [
    ament_cmake
    rmw_connextdds_common
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
