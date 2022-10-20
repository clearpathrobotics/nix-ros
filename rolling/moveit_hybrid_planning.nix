{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  controller_manager,
  moveit_common,
  moveit_core,
  moveit_msgs,
  moveit_planners_ompl,
  moveit_resources_panda_moveit_config,
  moveit_ros_planning,
  moveit_ros_planning_interface,
  pluginlib,
  position_controllers,
  rclcpp,
  rclcpp_action,
  rclcpp_components,
  robot_state_publisher,
  ros_testing,
  rviz2,
  std_msgs,
  std_srvs,
  tf2_ros,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_hybrid_planning";
  pkgFinal = final.rolling.moveit_hybrid_planning;
  src = srcs.moveit.moveit_hybrid_planning;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_planning
    moveit_ros_planning_interface
    pluginlib
    rclcpp
    rclcpp_action
    rclcpp_components
    std_msgs
    std_srvs
    tf2_ros
    trajectory_msgs
  ];

  colconRunDepends = [
    ament_index_cpp
    controller_manager
    moveit_common
    moveit_core
    moveit_msgs
    moveit_resources_panda_moveit_config
    moveit_ros_planning
    moveit_ros_planning_interface
    pluginlib
    position_controllers
    rclcpp
    rclcpp_action
    rclcpp_components
    robot_state_publisher
    rviz2
    std_msgs
    std_srvs
    tf2_ros
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    moveit_planners_ompl
    ros_testing
  ];
}
