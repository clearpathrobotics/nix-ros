{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_concepts,
  ecl_converters,
  ecl_devices,
  ecl_errors,
  ecl_license,
  ecl_time,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_streams";
  pkgFinal = final.rolling.ecl_streams;
  src = srcs.ecl_core.ecl_streams;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_concepts
    ecl_converters
    ecl_devices
    ecl_errors
    ecl_license
    ecl_time
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_concepts
    ecl_converters
    ecl_devices
    ecl_errors
    ecl_license
    ecl_time
    ecl_type_traits
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
