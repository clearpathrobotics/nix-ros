{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  eigen3_cmake_module,
  llvmPackages,
  moveit_common,
  moveit_core,
  moveit_msgs,
  moveit_resources_fanuc_moveit_config,
  moveit_resources_panda_moveit_config,
  moveit_resources_pr2_description,
  moveit_ros_planning,
  pluginlib,
  rclcpp,
  tf2_eigen,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_planners_ompl";
  pkgFinal = final.rolling.moveit_planners_ompl;
  src = srcs.moveit.moveit_planners_ompl;

  colconBuildDepends = [
    ament_cmake
    eigen3_cmake_module
    llvmPackages.openmp
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_planning
    pluginlib
    rclcpp
    tf2_eigen
    tf2_ros
  ];

  colconRunDepends = [
    llvmPackages.openmp
    moveit_common
    moveit_core
    moveit_msgs
    moveit_ros_planning
    pluginlib
    rclcpp
    tf2_eigen
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    eigen
    moveit_resources_fanuc_moveit_config
    moveit_resources_panda_moveit_config
    moveit_resources_pr2_description
    tf2_eigen
  ];
}
