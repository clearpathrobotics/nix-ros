{
  catkin,
  ecl_build,
  ecl_config,
  ecl_errors,
  ecl_exceptions,
  ecl_license,
  ecl_time,
  ecl_time_lite,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_ipc";
  pkgFinal = final.noetic.ecl_ipc;
  src = srcs.ecl_core.ecl_ipc;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time
    ecl_time_lite
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_time
    ecl_time_lite
  ];

  colconTestDepends = [
  ];
}
