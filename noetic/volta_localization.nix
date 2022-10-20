{
  catkin,
  robot_localization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "volta_localization";
  pkgFinal = final.noetic.volta_localization;
  src = srcs.volta.volta_localization;

  colconBuildDepends = [
    catkin
    robot_localization
  ];

  colconRunDepends = [
    robot_localization
  ];

  colconTestDepends = [
  ];
}
