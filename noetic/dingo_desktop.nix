{
  catkin,
  dingo_msgs,
  dingo_viz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dingo_desktop";
  pkgFinal = final.noetic.dingo_desktop;
  src = srcs.dingo_desktop.dingo_desktop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dingo_msgs
    dingo_viz
  ];

  colconTestDepends = [
  ];
}
