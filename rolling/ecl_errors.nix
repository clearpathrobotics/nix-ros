{
  ament_cmake_ros,
  ecl_build,
  ecl_config,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_errors";
  pkgFinal = final.rolling.ecl_errors;
  src = srcs.ecl_lite.ecl_errors;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_license
  ];

  colconRunDepends = [
    ecl_config
    ecl_license
  ];

  colconTestDepends = [
  ];
}
