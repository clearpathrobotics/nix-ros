{
  catkin,
  ridgeback_msgs,
  ridgeback_viz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ridgeback_desktop";
  pkgFinal = final.noetic.ridgeback_desktop;
  src = srcs.ridgeback_desktop.ridgeback_desktop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    ridgeback_msgs
    ridgeback_viz
  ];

  colconTestDepends = [
  ];
}
