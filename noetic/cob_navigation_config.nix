{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_navigation_config";
  pkgFinal = final.noetic.cob_navigation_config;
  src = srcs.cob_navigation.cob_navigation_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
