{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  chomp_motion_planner,
  moveit_common,
  moveit_core,
  pluginlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_chomp_optimizer_adapter";
  pkgFinal = final.rolling.moveit_chomp_optimizer_adapter;
  src = srcs.moveit.moveit_chomp_optimizer_adapter;

  colconBuildDepends = [
    ament_cmake
    chomp_motion_planner
    moveit_common
    moveit_core
    pluginlib
  ];

  colconRunDepends = [
    chomp_motion_planner
    moveit_common
    moveit_core
    pluginlib
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
