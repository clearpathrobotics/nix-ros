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
  name = "ecl_io";
  pkgFinal = final.noetic.ecl_io;
  src = srcs.ecl_lite.ecl_io;

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
