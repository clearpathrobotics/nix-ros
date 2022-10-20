{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_converters,
  ecl_eigen,
  ecl_exceptions,
  ecl_formatters,
  ecl_license,
  ecl_math,
  sophus,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_linear_algebra";
  pkgFinal = final.rolling.ecl_linear_algebra;
  src = srcs.ecl_core.ecl_linear_algebra;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_converters
    ecl_eigen
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_math
    sophus
  ];

  colconRunDepends = [
    ecl_build
    ecl_converters
    ecl_eigen
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_math
    sophus
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
