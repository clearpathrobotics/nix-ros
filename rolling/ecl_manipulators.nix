{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_exceptions,
  ecl_formatters,
  ecl_geometry,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_manipulators";
  pkgFinal = final.rolling.ecl_manipulators;
  src = srcs.ecl_core.ecl_manipulators;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_exceptions
    ecl_formatters
    ecl_geometry
    ecl_license
  ];

  colconRunDepends = [
    ecl_build
    ecl_exceptions
    ecl_formatters
    ecl_geometry
    ecl_license
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
