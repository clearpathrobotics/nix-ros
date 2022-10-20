{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  boost,
  launch_param_builder,
  moveit_common,
  moveit_configs_utils,
  moveit_core,
  moveit_ros_planning,
  moveit_ros_warehouse,
  pluginlib,
  rclcpp,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_ros_benchmarks";
  pkgFinal = final.rolling.moveit_ros_benchmarks;
  src = srcs.moveit.moveit_ros_benchmarks;

  colconBuildDepends = [
    ament_cmake
    boost
    moveit_common
    moveit_core
    moveit_ros_planning
    moveit_ros_warehouse
    pluginlib
    rclcpp
    tf2_eigen
  ];

  colconRunDepends = [
    boost
    launch_param_builder
    moveit_common
    moveit_configs_utils
    moveit_ros_planning
    moveit_ros_warehouse
    pluginlib
    rclcpp
    tf2_eigen
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
