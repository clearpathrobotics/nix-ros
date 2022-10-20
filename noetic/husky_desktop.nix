{
  catkin,
  husky_msgs,
  husky_viz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "husky_desktop";
  pkgFinal = final.noetic.husky_desktop;
  src = srcs.husky.husky_desktop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    husky_msgs
    husky_viz
  ];

  colconTestDepends = [
  ];
}
