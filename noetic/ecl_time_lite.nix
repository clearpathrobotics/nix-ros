{
  catkin,
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
  pkgFinal = final.noetic.ecl_time_lite;
  src = srcs.ecl_lite.ecl_time_lite;

  colconBuildDepends = [
    catkin
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
