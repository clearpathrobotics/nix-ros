{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_concepts,
  ecl_config,
  ecl_errors,
  ecl_exceptions,
  ecl_license,
  ecl_time,
  ecl_utilities,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_threads";
  pkgFinal = final.rolling.ecl_threads;
  src = srcs.ecl_core.ecl_threads;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_concepts
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time
    ecl_utilities
  ];

  colconRunDepends = [
    ecl_build
    ecl_concepts
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time
    ecl_utilities
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
