{
  catkin,
  ecl_config,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_errors";
  pkgFinal = final.noetic.ecl_errors;
  src = srcs.ecl_lite.ecl_errors;

  colconBuildDepends = [
    catkin
    ecl_config
    ecl_license
  ];

  colconRunDepends = [
    ecl_config
    ecl_license
  ];

  colconTestDepends = [
  ];
}
