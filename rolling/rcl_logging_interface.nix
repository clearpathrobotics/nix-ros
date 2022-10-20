{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  rcpputils,
  rcutils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcl_logging_interface";
  pkgFinal = final.rolling.rcl_logging_interface;
  src = srcs.rcl_logging.rcl_logging_interface;

  colconBuildDepends = [
    ament_cmake_ros
    rcutils
  ];

  colconRunDepends = [
    rcutils
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    rcpputils
  ];
}
