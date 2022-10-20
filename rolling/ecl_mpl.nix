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
  name = "ecl_mpl";
  pkgFinal = final.rolling.ecl_mpl;
  src = srcs.ecl_core.ecl_mpl;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_license
  ];

  colconRunDepends = [
    ecl_license
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
