{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_supported_robots";
  pkgFinal = final.noetic.cob_supported_robots;
  src = srcs.cob_supported_robots.cob_supported_robots;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
