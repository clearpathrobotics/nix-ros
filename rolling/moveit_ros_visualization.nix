{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  class_loader,
  eigen,
  geometric_shapes,
  interactive_markers,
  moveit_common,
  moveit_ros_planning_interface,
  moveit_ros_robot_interaction,
  moveit_ros_warehouse,
  object_recognition_msgs,
  pkg-config,
  pluginlib,
  qt5,
  rclcpp,
  rclpy,
  rviz2,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_visualization";
  pkgFinal = final.rolling.moveit_ros_visualization;
  src = srcs.moveit.moveit_ros_visualization;

  colconBuildDepends = [
    ament_cmake
    class_loader
    eigen
    geometric_shapes
    interactive_markers
    moveit_common
    moveit_ros_planning_interface
    moveit_ros_robot_interaction
    moveit_ros_warehouse
    object_recognition_msgs
    pkg-config
    pluginlib
    qt5.qtbase
    rclcpp
    rclpy
    rviz2
    tf2_eigen
  ];

  colconRunDepends = [
    geometric_shapes
    interactive_markers
    moveit_common
    moveit_ros_planning_interface
    moveit_ros_robot_interaction
    moveit_ros_warehouse
    object_recognition_msgs
    pluginlib
    rclcpp
    rclpy
    rviz2
    tf2_eigen
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
