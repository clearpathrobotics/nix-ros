{
  catkin,
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
  pkgFinal = final.noetic.ecl_lite;
  src = srcs.ecl_lite.ecl_lite;

  colconBuildDepends = [
    catkin
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
