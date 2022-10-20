{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_config,
  ecl_license,
  ecl_threads,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_sigslots";
  pkgFinal = final.rolling.ecl_sigslots;
  src = srcs.ecl_core.ecl_sigslots;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_license
    ecl_threads
  ];

  colconRunDepends = [
    ecl_config
    ecl_license
    ecl_threads
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
