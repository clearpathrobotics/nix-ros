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
  name = "ecl_io";
  pkgFinal = final.rolling.ecl_io;
  src = srcs.ecl_lite.ecl_io;

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
