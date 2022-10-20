{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  ecl_build,
  ecl_config,
  ecl_containers,
  ecl_errors,
  ecl_license,
  ecl_mpl,
  ecl_threads,
  ecl_type_traits,
  ecl_utilities,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_devices";
  pkgFinal = final.rolling.ecl_devices;
  src = srcs.ecl_core.ecl_devices;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_containers
    ecl_errors
    ecl_license
    ecl_mpl
    ecl_threads
    ecl_type_traits
    ecl_utilities
  ];

  colconRunDepends = [
    ecl_config
    ecl_containers
    ecl_errors
    ecl_license
    ecl_mpl
    ecl_threads
    ecl_type_traits
    ecl_utilities
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
