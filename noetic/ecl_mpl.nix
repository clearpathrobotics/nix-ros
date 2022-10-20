{
  catkin,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_mpl";
  pkgFinal = final.noetic.ecl_mpl;
  src = srcs.ecl_core.ecl_mpl;

  colconBuildDepends = [
    catkin
    ecl_license
  ];

  colconRunDepends = [
    ecl_license
  ];

  colconTestDepends = [
  ];
}
