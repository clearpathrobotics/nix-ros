{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tracetools";
  pkgFinal = final.rolling.tracetools;
  src = srcs.ros2_tracing.tracetools;

  colconBuildDepends = [
    ament_cmake_ros
    pkg-config
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
