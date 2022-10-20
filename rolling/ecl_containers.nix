{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_config,
  ecl_converters,
  ecl_errors,
  ecl_exceptions,
  ecl_formatters,
  ecl_license,
  ecl_mpl,
  ecl_type_traits,
  ecl_utilities,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_containers";
  pkgFinal = final.rolling.ecl_containers;
  src = srcs.ecl_core.ecl_containers;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_converters
    ecl_errors
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_mpl
    ecl_type_traits
    ecl_utilities
  ];

  colconRunDepends = [
    ecl_config
    ecl_converters
    ecl_errors
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_mpl
    ecl_type_traits
    ecl_utilities
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
