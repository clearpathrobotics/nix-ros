{
  catkin,
  moveit_core,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "chomp_motion_planner";
  pkgFinal = final.noetic.chomp_motion_planner;
  src = srcs.moveit.chomp_motion_planner;

  colconBuildDepends = [
    catkin
    moveit_core
    roscpp
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
