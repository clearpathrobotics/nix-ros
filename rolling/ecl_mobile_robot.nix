{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_errors,
  ecl_formatters,
  ecl_geometry,
  ecl_license,
  ecl_linear_algebra,
  ecl_math,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_mobile_robot";
  pkgFinal = final.rolling.ecl_mobile_robot;
  src = srcs.ecl_core.ecl_mobile_robot;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_errors
    ecl_formatters
    ecl_geometry
    ecl_license
    ecl_linear_algebra
    ecl_math
  ];

  colconRunDepends = [
    ecl_build
    ecl_errors
    ecl_formatters
    ecl_geometry
    ecl_license
    ecl_linear_algebra
    ecl_math
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
