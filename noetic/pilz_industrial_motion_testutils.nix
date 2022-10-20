{
  catkin,
  moveit_commander,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_industrial_motion_testutils";
  pkgFinal = final.noetic.pilz_industrial_motion_testutils;
  src = srcs.pilz_common.pilz_industrial_motion_testutils;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    moveit_commander
  ];

  colconTestDepends = [
  ];
}
