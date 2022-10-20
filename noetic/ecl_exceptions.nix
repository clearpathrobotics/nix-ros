{
  catkin,
  ecl_config,
  ecl_errors,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_exceptions";
  pkgFinal = final.noetic.ecl_exceptions;
  src = srcs.ecl_core.ecl_exceptions;

  colconBuildDepends = [
    catkin
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
