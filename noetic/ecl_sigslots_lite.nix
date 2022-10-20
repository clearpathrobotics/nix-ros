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
  name = "ecl_sigslots_lite";
  pkgFinal = final.noetic.ecl_sigslots_lite;
  src = srcs.ecl_lite.ecl_sigslots_lite;

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
