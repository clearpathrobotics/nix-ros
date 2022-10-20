{
  catkin,
  leo,
  leo_viz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_desktop";
  pkgFinal = final.noetic.leo_desktop;
  src = srcs.leo_desktop.leo_desktop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    leo
    leo_viz
  ];

  colconTestDepends = [
  ];
}
