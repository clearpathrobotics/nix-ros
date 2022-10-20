{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_utilities";
  pkgFinal = final.noetic.cob_utilities;
  src = srcs.cob_driver.cob_utilities;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
