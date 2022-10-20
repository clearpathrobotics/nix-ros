{
  catkin,
  moveit_core,
  moveit_planners,
  moveit_plugins,
  moveit_ros_manipulation,
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
  pkgFinal = final.noetic.moveit_runtime;
  src = srcs.moveit.moveit_runtime;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    moveit_core
    moveit_planners
    moveit_plugins
    moveit_ros_manipulation
    moveit_ros_move_group
    moveit_ros_perception
    moveit_ros_planning
    moveit_ros_planning_interface
    moveit_ros_warehouse
  ];

  colconTestDepends = [
  ];
}
