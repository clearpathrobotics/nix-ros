{
  ament_cmake_ros,
  ecl_build,
  ecl_config,
  ecl_errors,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_time_lite";
  pkgFinal = final.rolling.ecl_time_lite;
  src = srcs.ecl_lite.ecl_time_lite;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_errors
    ecl_license
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_errors
    ecl_license
  ];

  colconTestDepends = [
  ];
}
