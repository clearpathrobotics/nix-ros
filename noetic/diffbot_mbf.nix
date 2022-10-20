{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_mbf";
  pkgFinal = final.noetic.diffbot_mbf;
  src = srcs.diffbot.diffbot_mbf;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
