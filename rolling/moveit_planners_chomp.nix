{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  chomp_motion_planner,
  moveit_common,
  moveit_core,
  pluginlib,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_planners_chomp";
  pkgFinal = final.rolling.moveit_planners_chomp;
  src = srcs.moveit.moveit_planners_chomp;

  colconBuildDepends = [
    ament_cmake
    chomp_motion_planner
    moveit_common
    moveit_core
    pluginlib
    rclcpp
  ];

  colconRunDepends = [
    chomp_motion_planner
    moveit_common
    moveit_core
    pluginlib
    rclcpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
