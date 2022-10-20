{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_config,
  ecl_errors,
  ecl_exceptions,
  ecl_license,
  ecl_time_lite,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_time";
  pkgFinal = final.rolling.ecl_time;
  src = srcs.ecl_core.ecl_time;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time_lite
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time_lite
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
