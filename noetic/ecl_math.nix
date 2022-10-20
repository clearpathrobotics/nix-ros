{
  catkin,
  ecl_license,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_math";
  pkgFinal = final.noetic.ecl_math;
  src = srcs.ecl_core.ecl_math;

  colconBuildDepends = [
    catkin
    ecl_license
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_license
    ecl_type_traits
  ];

  colconTestDepends = [
  ];
}
