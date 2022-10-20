{
  catkin,
  gmapping,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_slam";
  pkgFinal = final.noetic.diffbot_slam;
  src = srcs.diffbot.diffbot_slam;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gmapping
  ];

  colconTestDepends = [
  ];
}
