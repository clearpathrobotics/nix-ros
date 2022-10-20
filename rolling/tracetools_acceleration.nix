{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tracetools_acceleration";
  pkgFinal = final.rolling.tracetools_acceleration;
  src = srcs.tracetools_acceleration.tracetools_acceleration;

  colconBuildDepends = [
    ament_cmake_ros
    pkg-config
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
