{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  performance_test_fixture,
  rcl_logging_interface,
  rcpputils,
  rcutils,
  spdlog,
  spdlog_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcl_logging_spdlog";
  pkgFinal = final.rolling.rcl_logging_spdlog;
  src = srcs.rcl_logging.rcl_logging_spdlog;

  colconBuildDepends = [
    ament_cmake_ros
    rcl_logging_interface
    rcpputils
    rcutils
    spdlog
    spdlog_vendor
  ];

  colconRunDepends = [
    rcl_logging_interface
    rcpputils
    rcutils
    spdlog
    spdlog_vendor
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    performance_test_fixture
  ];
}
