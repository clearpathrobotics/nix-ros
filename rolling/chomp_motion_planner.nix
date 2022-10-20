{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  moveit_common,
  moveit_core,
  rclcpp,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "chomp_motion_planner";
  pkgFinal = final.rolling.chomp_motion_planner;
  src = srcs.moveit.chomp_motion_planner;

  colconBuildDepends = [
    ament_cmake
    moveit_common
    moveit_core
    rclcpp
    trajectory_msgs
  ];

  colconRunDepends = [
    moveit_common
    moveit_core
    rclcpp
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
