{
  catkin,
  ecl_build,
  ecl_license,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_tools";
  pkgFinal = final.noetic.ecl_tools;
  src = srcs.ecl_tools.ecl_tools;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ecl_build
    ecl_license
  ];

  colconTestDepends = [
  ];
}
