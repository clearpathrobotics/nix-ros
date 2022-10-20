{
  catkin,
  class_loader,
  moveit_core,
  moveit_ros_planning,
  pluginlib,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_trajectory_filters";
  pkgFinal = final.noetic.industrial_trajectory_filters;
  src = srcs.industrial_core.industrial_trajectory_filters;

  colconBuildDepends = [
    catkin
    class_loader
    moveit_core
    moveit_ros_planning
    pluginlib
    trajectory_msgs
  ];

  colconRunDepends = [
    class_loader
    moveit_core
    moveit_ros_planning
    pluginlib
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
