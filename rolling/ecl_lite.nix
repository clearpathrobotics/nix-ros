{
  ament_cmake_ros,
  ecl_config,
  ecl_converters_lite,
  ecl_errors,
  ecl_io,
  ecl_sigslots_lite,
  ecl_time_lite,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_lite";
  pkgFinal = final.rolling.ecl_lite;
  src = srcs.ecl_lite.ecl_lite;

  colconBuildDepends = [
    ament_cmake_ros
  ];

  colconRunDepends = [
    ecl_config
    ecl_converters_lite
    ecl_errors
    ecl_io
    ecl_sigslots_lite
    ecl_time_lite
  ];

  colconTestDepends = [
  ];
}
