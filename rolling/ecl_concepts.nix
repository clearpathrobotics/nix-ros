{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_config,
  ecl_license,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_concepts";
  pkgFinal = final.rolling.ecl_concepts;
  src = srcs.ecl_core.ecl_concepts;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_license
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_config
    ecl_license
    ecl_type_traits
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
