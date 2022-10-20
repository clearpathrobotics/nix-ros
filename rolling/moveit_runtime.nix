{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  moveit_core,
  moveit_planners,
  moveit_plugins,
  moveit_ros_move_group,
  moveit_ros_perception,
  moveit_ros_planning,
  moveit_ros_planning_interface,
  moveit_ros_warehouse,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_runtime";
  pkgFinal = final.rolling.moveit_runtime;
  src = srcs.moveit.moveit_runtime;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    moveit_core
    moveit_planners
    moveit_plugins
    moveit_ros_move_group
    moveit_ros_perception
    moveit_ros_planning
    moveit_ros_planning_interface
    moveit_ros_warehouse
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
