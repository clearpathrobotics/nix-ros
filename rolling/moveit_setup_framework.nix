{
  ament_clang_format,
  ament_cmake,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,
  ament_index_cpp,
  ament_lint_auto,
  moveit_common,
  moveit_core,
  moveit_ros_planning,
  moveit_ros_visualization,
  pluginlib,
  rclcpp,
  rviz_common,
  rviz_rendering,
  srdfdom,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_setup_framework";
  pkgFinal = final.rolling.moveit_setup_framework;
  src = srcs.moveit.moveit_setup_framework;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    moveit_common
    moveit_core
    moveit_ros_planning
    moveit_ros_visualization
    pluginlib
    rclcpp
    rviz_common
    rviz_rendering
    srdfdom
    urdf
  ];

  colconRunDepends = [
    ament_index_cpp
    moveit_common
    moveit_core
    moveit_ros_planning
    moveit_ros_visualization
    pluginlib
    rclcpp
    rviz_common
    rviz_rendering
    srdfdom
    urdf
  ];

  colconTestDepends = [
    ament_clang_format
    ament_cmake_lint_cmake
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
