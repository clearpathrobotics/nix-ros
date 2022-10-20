{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_config";
  pkgFinal = final.rolling.ecl_config;
  src = srcs.ecl_lite.ecl_config;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_license
  ];

  colconRunDepends = [
    ecl_build
    ecl_license
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
