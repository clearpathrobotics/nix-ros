{
  catkin,
  ecl_build,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_config";
  pkgFinal = final.noetic.ecl_config;
  src = srcs.ecl_lite.ecl_config;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_license
  ];

  colconRunDepends = [
    ecl_build
    ecl_license
  ];

  colconTestDepends = [
  ];
}
