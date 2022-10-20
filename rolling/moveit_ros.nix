{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  moveit_ros_benchmarks,
  moveit_ros_move_group,
  moveit_ros_planning,
  moveit_ros_planning_interface,
  moveit_ros_robot_interaction,
  moveit_ros_visualization,
  moveit_ros_warehouse,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros";
  pkgFinal = final.rolling.moveit_ros;
  src = srcs.moveit.moveit_ros;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    moveit_ros_benchmarks
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_planning_interface
    moveit_ros_robot_interaction
    moveit_ros_visualization
    moveit_ros_warehouse
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
