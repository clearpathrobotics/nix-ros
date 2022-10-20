{
  catkin,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_build";
  pkgFinal = final.noetic.ecl_build;
  src = srcs.ecl_tools.ecl_build;

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
