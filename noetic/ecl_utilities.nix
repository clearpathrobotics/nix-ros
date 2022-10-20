{
  catkin,
  ecl_concepts,
  ecl_license,
  ecl_mpl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_utilities";
  pkgFinal = final.noetic.ecl_utilities;
  src = srcs.ecl_core.ecl_utilities;

  colconBuildDepends = [
    catkin
    ecl_concepts
    ecl_license
    ecl_mpl
  ];

  colconRunDepends = [
    ecl_concepts
    ecl_license
    ecl_mpl
  ];

  colconTestDepends = [
  ];
}
