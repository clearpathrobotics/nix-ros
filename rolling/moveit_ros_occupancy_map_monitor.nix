{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  eigen3_cmake_module,
  geometric_shapes,
  moveit_common,
  moveit_core,
  moveit_msgs,
  pluginlib,
  rclcpp,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_occupancy_map_monitor";
  pkgFinal = final.rolling.moveit_ros_occupancy_map_monitor;
  src = srcs.moveit.moveit_ros_occupancy_map_monitor;

  colconBuildDepends = [
    ament_cmake
    eigen
    eigen3_cmake_module
    geometric_shapes
    moveit_common
    moveit_core
    moveit_msgs
    pluginlib
    rclcpp
    tf2_ros
  ];

  colconRunDepends = [
    eigen
    eigen3_cmake_module
    geometric_shapes
    moveit_common
    moveit_core
    moveit_msgs
    pluginlib
    rclcpp
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
  ];
}
