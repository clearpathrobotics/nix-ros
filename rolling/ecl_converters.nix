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
  ecl_mpl,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_converters";
  pkgFinal = final.rolling.ecl_converters;
  src = srcs.ecl_core.ecl_converters;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_concepts
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_mpl
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_concepts
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_mpl
    ecl_type_traits
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
