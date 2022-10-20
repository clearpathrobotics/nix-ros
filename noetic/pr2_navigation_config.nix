{
  catkin,
  move_base,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_navigation_config";
  pkgFinal = final.noetic.pr2_navigation_config;
  src = srcs.pr2_navigation.pr2_navigation_config;

  colconBuildDepends = [
    catkin
    move_base
  ];

  colconRunDepends = [
    move_base
  ];

  colconTestDepends = [
  ];
}
