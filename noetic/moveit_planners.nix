{
  catkin,
  chomp_motion_planner,
  moveit_planners_chomp,
  moveit_planners_ompl,
  pilz_industrial_motion_planner,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_planners";
  pkgFinal = final.noetic.moveit_planners;
  src = srcs.moveit.moveit_planners;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    chomp_motion_planner
    moveit_planners_chomp
    moveit_planners_ompl
    pilz_industrial_motion_planner
  ];

  colconTestDepends = [
  ];
}
