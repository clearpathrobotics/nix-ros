{
  catkin,
  ecl_config,
  ecl_license,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_concepts";
  pkgFinal = final.noetic.ecl_concepts;
  src = srcs.ecl_core.ecl_concepts;

  colconBuildDepends = [
    catkin
    ecl_config
    ecl_license
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_config
    ecl_license
    ecl_type_traits
  ];

  colconTestDepends = [
  ];
}
