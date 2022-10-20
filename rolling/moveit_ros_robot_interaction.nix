{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  interactive_markers,
  moveit_common,
  moveit_core,
  moveit_ros_planning,
  rclcpp,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_robot_interaction";
  pkgFinal = final.rolling.moveit_ros_robot_interaction;
  src = srcs.moveit.moveit_ros_robot_interaction;

  colconBuildDepends = [
    ament_cmake
    interactive_markers
    moveit_common
    moveit_core
    moveit_ros_planning
    rclcpp
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    interactive_markers
    moveit_common
    moveit_core
    moveit_ros_planning
    rclcpp
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
