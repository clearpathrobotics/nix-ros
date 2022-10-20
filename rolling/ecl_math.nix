{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_license,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_math";
  pkgFinal = final.rolling.ecl_math;
  src = srcs.ecl_core.ecl_math;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_license
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_license
    ecl_type_traits
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
