{
  catkin,
  ecl_config,
  ecl_converters,
  ecl_errors,
  ecl_exceptions,
  ecl_formatters,
  ecl_license,
  ecl_mpl,
  ecl_type_traits,
  ecl_utilities,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_containers";
  pkgFinal = final.noetic.ecl_containers;
  src = srcs.ecl_core.ecl_containers;

  colconBuildDepends = [
    catkin
    ecl_config
    ecl_converters
    ecl_errors
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_mpl
    ecl_type_traits
    ecl_utilities
  ];

  colconRunDepends = [
    ecl_config
    ecl_converters
    ecl_errors
    ecl_exceptions
    ecl_formatters
    ecl_license
    ecl_mpl
    ecl_type_traits
    ecl_utilities
  ];

  colconTestDepends = [
  ];
}
