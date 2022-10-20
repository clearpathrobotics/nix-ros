{
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  launch_testing,
  python3Packages,
  rcl_logging_interface,
  rcutils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcl_logging_noop";
  pkgFinal = final.rolling.rcl_logging_noop;
  src = srcs.rcl_logging.rcl_logging_noop;

  colconBuildDepends = [
    ament_cmake_ros
    python3Packages.empy
    rcl_logging_interface
    rcutils
  ];

  colconRunDepends = [
    rcl_logging_interface
    rcutils
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    launch_testing
  ];
}
