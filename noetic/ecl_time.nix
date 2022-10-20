{
  catkin,
  ecl_build,
  ecl_config,
  ecl_errors,
  ecl_exceptions,
  ecl_license,
  ecl_time_lite,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_time";
  pkgFinal = final.noetic.ecl_time;
  src = srcs.ecl_core.ecl_time;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time_lite
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time_lite
  ];

  colconTestDepends = [
  ];
}
