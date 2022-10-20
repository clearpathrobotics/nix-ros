{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_config,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_converters_lite";
  pkgFinal = final.rolling.ecl_converters_lite;
  src = srcs.ecl_lite.ecl_converters_lite;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_config
    ecl_license
  ];

  colconRunDepends = [
    ecl_config
    ecl_license
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
