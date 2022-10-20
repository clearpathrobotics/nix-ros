{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ecl_license";
  pkgFinal = final.noetic.ecl_license;
  src = srcs.ecl_tools.ecl_license;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
