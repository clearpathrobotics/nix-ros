{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  graph_msgs,
  moveit_common,
  moveit_core,
  moveit_ros_planning,
  rclcpp,
  rviz_visual_tools,
  std_msgs,
  tf2_eigen,
  tf2_ros,
  trajectory_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_visual_tools";
  pkgFinal = final.rolling.moveit_visual_tools;
  src = srcs.moveit_visual_tools.moveit_visual_tools;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    graph_msgs
    moveit_common
    moveit_core
    moveit_ros_planning
    rclcpp
    rviz_visual_tools
    std_msgs
    tf2_eigen
    tf2_ros
    trajectory_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    graph_msgs
    moveit_common
    moveit_core
    moveit_ros_planning
    rclcpp
    rviz_visual_tools
    std_msgs
    tf2_eigen
    tf2_ros
    trajectory_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
