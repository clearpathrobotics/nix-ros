{
  catkin,
  roslint,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "color_util";
  pkgFinal = final.noetic.color_util;
  src = srcs.robot_navigation.color_util;

  colconBuildDepends = [
    catkin
    std_msgs
  ];

  colconRunDepends = [
    std_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
