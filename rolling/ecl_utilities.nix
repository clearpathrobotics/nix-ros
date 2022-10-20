{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_concepts,
  ecl_license,
  ecl_mpl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_utilities";
  pkgFinal = final.rolling.ecl_utilities;
  src = srcs.ecl_core.ecl_utilities;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_concepts
    ecl_license
    ecl_mpl
  ];

  colconRunDepends = [
    ecl_concepts
    ecl_license
    ecl_mpl
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
