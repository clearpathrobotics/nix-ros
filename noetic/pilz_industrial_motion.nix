{
  catkin,
  pilz_msgs,
  pilz_robot_programming,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_industrial_motion";
  pkgFinal = final.noetic.pilz_industrial_motion;
  src = srcs.pilz_industrial_motion.pilz_industrial_motion;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pilz_msgs
    pilz_robot_programming
  ];

  colconTestDepends = [
  ];
}
