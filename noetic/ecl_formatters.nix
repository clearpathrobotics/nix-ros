{
  catkin,
  ecl_config,
  ecl_converters,
  ecl_exceptions,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_formatters";
  pkgFinal = final.noetic.ecl_formatters;
  src = srcs.ecl_core.ecl_formatters;

  colconBuildDepends = [
    catkin
    ecl_config
    ecl_converters
    ecl_exceptions
    ecl_license
  ];

  colconRunDepends = [
    ecl_config
    ecl_converters
    ecl_exceptions
    ecl_license
  ];

  colconTestDepends = [
  ];
}
