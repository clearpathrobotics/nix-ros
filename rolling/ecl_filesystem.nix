{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_config,
  ecl_errors,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_filesystem";
  pkgFinal = final.rolling.ecl_filesystem;
  src = srcs.ecl_core.ecl_filesystem;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_errors
    ecl_license
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_errors
    ecl_license
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
