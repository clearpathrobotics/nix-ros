{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  boost,
  eigen3_cmake_module,
  geometry_msgs,
  launch_param_builder,
  moveit_common,
  moveit_configs_utils,
  moveit_core,
  moveit_msgs,
  moveit_resources_panda_moveit_config,
  moveit_resources_prbt_moveit_config,
  moveit_resources_prbt_pg70_support,
  moveit_resources_prbt_support,
  moveit_ros_move_group,
  moveit_ros_planning,
  moveit_ros_planning_interface,
  orocos_kdl_vendor,
  pilz_industrial_motion_planner_testutils,
  pluginlib,
  rclcpp,
  ros_testing,
  tf2,
  tf2_eigen,
  tf2_eigen_kdl,
  tf2_geometry_msgs,
  tf2_kdl,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_industrial_motion_planner";
  pkgFinal = final.rolling.pilz_industrial_motion_planner;
  src = srcs.moveit.pilz_industrial_motion_planner;

  colconBuildDepends = [
    ament_cmake
    eigen3_cmake_module
    geometry_msgs
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_planning_interface
    orocos_kdl_vendor
    pluginlib
    rclcpp
    tf2
    tf2_eigen
    tf2_eigen_kdl
    tf2_geometry_msgs
    tf2_kdl
    tf2_ros
  ];

  colconRunDepends = [
    eigen3_cmake_module
    geometry_msgs
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_move_group
    moveit_ros_planning
    moveit_ros_planning_interface
    orocos_kdl_vendor
    pluginlib
    rclcpp
    tf2
    tf2_eigen
    tf2_eigen_kdl
    tf2_geometry_msgs
    tf2_kdl
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    boost
    launch_param_builder
    moveit_configs_utils
    moveit_resources_panda_moveit_config
    moveit_resources_prbt_moveit_config
    moveit_resources_prbt_pg70_support
    moveit_resources_prbt_support
    pilz_industrial_motion_planner_testutils
    ros_testing
  ];
}
