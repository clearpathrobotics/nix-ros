{
  catkin,
  ecl_config,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_converters_lite";
  pkgFinal = final.noetic.ecl_converters_lite;
  src = srcs.ecl_lite.ecl_converters_lite;

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
