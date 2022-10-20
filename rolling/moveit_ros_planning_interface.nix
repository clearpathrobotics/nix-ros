{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  eigen,
  eigen3_cmake_module,
  geometry_msgs,
  moveit_common,
  moveit_configs_utils,
  moveit_core,
  moveit_msgs,
  moveit_planners_ompl,
  moveit_resources_fanuc_moveit_config,
  moveit_resources_panda_moveit_config,
  moveit_ros_move_group,
  moveit_ros_planning,
  moveit_ros_warehouse,
  moveit_simple_controller_manager,
  python3,
  rclcpp,
  rclcpp_action,
  rclpy,
  ros_testing,
  rviz2,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_planning_interface";
  pkgFinal = final.rolling.moveit_ros_planning_interface;
  src = srcs.moveit.moveit_ros_planning_interface;

  colconBuildDepends = [
    ament_cmake
    eigen
    eigen3_cmake_module
    geometry_msgs
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_warehouse
    python3
    rclcpp
    rclcpp_action
    rclpy
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_warehouse
    python3
    rclcpp
    rclcpp_action
    rclpy
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    moveit_configs_utils
    moveit_planners_ompl
    moveit_resources_fanuc_moveit_config
    moveit_resources_panda_moveit_config
    moveit_simple_controller_manager
    ros_testing
    rviz2
  ];
}
