{
  ament_cmake_ros,
  ecl_build,
  ecl_config,
  ecl_converters,
  ecl_exceptions,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_formatters";
  pkgFinal = final.rolling.ecl_formatters;
  src = srcs.ecl_core.ecl_formatters;

  colconBuildDepends = [
    ament_cmake_ros
    ecl_build
    ecl_config
    ecl_converters
    ecl_exceptions
    ecl_license
  ];

  colconRunDepends = [
    ecl_config
    ecl_converters
    ecl_exceptions
    ecl_license
  ];

  colconTestDepends = [
  ];
}
