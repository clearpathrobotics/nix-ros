{
  catkin,
  chomp_motion_planner,
  moveit_core,
  pluginlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_chomp_optimizer_adapter";
  pkgFinal = final.noetic.moveit_chomp_optimizer_adapter;
  src = srcs.moveit.moveit_chomp_optimizer_adapter;

  colconBuildDepends = [
    catkin
    chomp_motion_planner
    moveit_core
    pluginlib
  ];

  colconRunDepends = [
    chomp_motion_planner
    moveit_core
    pluginlib
  ];

  colconTestDepends = [
  ];
}
