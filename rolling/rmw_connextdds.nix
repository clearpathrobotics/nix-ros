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
  name = "rmw_connextdds";
  pkgFinal = final.rolling.rmw_connextdds;
  src = srcs.rmw_connextdds.rmw_connextdds;

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
