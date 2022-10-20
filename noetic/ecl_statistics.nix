{
  catkin,
  ecl_build,
  ecl_config,
  ecl_license,
  ecl_linear_algebra,
  ecl_mpl,
  ecl_type_traits,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_statistics";
  pkgFinal = final.noetic.ecl_statistics;
  src = srcs.ecl_core.ecl_statistics;

  colconBuildDepends = [
    catkin
    ecl_build
    ecl_config
    ecl_license
    ecl_linear_algebra
    ecl_mpl
    ecl_type_traits
  ];

  colconRunDepends = [
    ecl_build
    ecl_config
    ecl_license
    ecl_linear_algebra
    ecl_mpl
    ecl_type_traits
  ];

  colconTestDepends = [
  ];
}
