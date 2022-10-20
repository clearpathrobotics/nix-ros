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
  name = "ecl_sigslots_lite";
  pkgFinal = final.rolling.ecl_sigslots_lite;
  src = srcs.ecl_lite.ecl_sigslots_lite;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_errors
    ecl_license
  ];

  colconRunDepends = [
    ecl_config
    ecl_errors
    ecl_license
  ];

  colconTestDepends = [
  ];
}
