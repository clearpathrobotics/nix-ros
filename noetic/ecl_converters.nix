{
  catkin,
  ecl_concepts,
  ecl_config,
  ecl_errors,
  ecl_exceptions,
  ecl_license,
  ecl_mpl,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_converters";
  pkgFinal = final.noetic.ecl_converters;
  src = srcs.ecl_core.ecl_converters;

  colconBuildDepends = [
    catkin
    ecl_concepts
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_mpl
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_concepts
    ecl_config
    ecl_errors
    ecl_exceptions
    ecl_license
    ecl_mpl
    ecl_type_traits
  ];

  colconTestDepends = [
  ];
}
