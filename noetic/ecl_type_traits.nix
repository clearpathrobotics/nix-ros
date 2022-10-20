{
  catkin,
  ecl_config,
  ecl_license,
  ecl_mpl,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_type_traits";
  pkgFinal = final.noetic.ecl_type_traits;
  src = srcs.ecl_core.ecl_type_traits;

  colconBuildDepends = [
    catkin
    ecl_config
    ecl_license
    ecl_mpl
  ];

  colconRunDepends = [
    ecl_config
    ecl_license
    ecl_mpl
  ];

  colconTestDepends = [
  ];
}
