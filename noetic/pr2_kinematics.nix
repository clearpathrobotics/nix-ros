{
  catkin,
  pr2_arm_kinematics,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_kinematics";
  pkgFinal = final.noetic.pr2_kinematics;
  src = srcs.pr2_kinematics.pr2_kinematics;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pr2_arm_kinematics
  ];

  colconTestDepends = [
  ];
}
