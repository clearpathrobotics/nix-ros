{
  assisted_teleop,
  catkin,
  goal_passer,
  pose_base_controller,
  pose_follower,
  sbpl_lattice_planner,
  sbpl_recovery,
  twist_recovery,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "navigation_experimental";
  pkgFinal = final.noetic.navigation_experimental;
  src = srcs.navigation_experimental.navigation_experimental;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    assisted_teleop
    goal_passer
    pose_base_controller
    pose_follower
    sbpl_lattice_planner
    sbpl_recovery
    twist_recovery
  ];

  colconTestDepends = [
  ];
}
