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
  name = "ecl_console";
  pkgFinal = final.rolling.ecl_console;
  src = srcs.ecl_lite.ecl_console;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_license
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_license
  ];

  colconTestDepends = [
  ];
}
