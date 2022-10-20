{
  catkin,
  moveit_ros_benchmarks,
  moveit_ros_manipulation,
  moveit_ros_move_group,
  moveit_ros_perception,
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
  pkgFinal = final.noetic.moveit_ros;
  src = srcs.moveit.moveit_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    moveit_ros_benchmarks
    moveit_ros_manipulation
    moveit_ros_move_group
    moveit_ros_perception
    moveit_ros_planning
    moveit_ros_planning_interface
    moveit_ros_robot_interaction
    moveit_ros_visualization
    moveit_ros_warehouse
  ];

  colconTestDepends = [
  ];
}
