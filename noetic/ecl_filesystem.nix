{
  catkin,
  ecl_build,
  ecl_config,
  ecl_errors,
  ecl_exceptions,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_filesystem";
  pkgFinal = final.noetic.ecl_filesystem;
  src = srcs.ecl_core.ecl_filesystem;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
  ];

  colconTestDepends = [
  ];
}
