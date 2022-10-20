{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  eigen3_cmake_module,
  generate_parameter_library,
  message_filters,
  moveit_common,
  moveit_core,
  moveit_msgs,
  moveit_resources_panda_moveit_config,
  moveit_ros_occupancy_map_monitor,
  pluginlib,
  rclcpp,
  rclcpp_action,
  ros_testing,
  srdfdom,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_msgs,
  tf2_ros,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_planning";
  pkgFinal = final.rolling.moveit_ros_planning;
  src = srcs.moveit.moveit_ros_planning;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    eigen
    eigen3_cmake_module
    generate_parameter_library
    message_filters
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_occupancy_map_monitor
    pluginlib
    rclcpp
    rclcpp_action
    srdfdom
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
    urdf
  ];

  colconRunDepends = [
    ament_index_cpp
    eigen
    eigen3_cmake_module
    generate_parameter_library
    message_filters
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_occupancy_map_monitor
    pluginlib
    rclcpp
    rclcpp_action
    srdfdom
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
    urdf
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    moveit_resources_panda_moveit_config
    ros_testing
  ];
}
