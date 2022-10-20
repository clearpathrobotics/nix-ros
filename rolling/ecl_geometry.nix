{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_config,
  ecl_containers,
  ecl_exceptions,
  ecl_formatters,
  ecl_license,
  ecl_linear_algebra,
  ecl_math,
  ecl_mpl,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_geometry";
  pkgFinal = final.rolling.ecl_geometry;
  src = srcs.ecl_core.ecl_geometry;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_containers
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_linear_algebra
    ecl_math
    ecl_mpl
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_containers
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_linear_algebra
    ecl_math
    ecl_mpl
    ecl_type_traits
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
