{
  ament_cmake,
  ament_cmake_gtest,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  eigen3_cmake_module,
  eigen_stl_containers,
  geometry_msgs,
  interactive_markers,
  launch,
  launch_ros,
  pluginlib,
  qt5,
  rclcpp,
  rclcpp_components,
  rviz2,
  rviz_common,
  rviz_default_plugins,
  rviz_ogre_vendor,
  rviz_rendering,
  sensor_msgs,
  shape_msgs,
  std_msgs,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  trajectory_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rviz_visual_tools";
  pkgFinal = final.rolling.rviz_visual_tools;
  src = srcs.rviz_visual_tools.rviz_visual_tools;

  colconBuildDepends = [
    ament_cmake
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    geometry_msgs
    interactive_markers
    pluginlib
    qt5.qtbase
    rclcpp
    rclcpp_components
    rviz_common
    rviz_default_plugins
    rviz_ogre_vendor
    rviz_rendering
    sensor_msgs
    shape_msgs
    std_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    trajectory_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    ament_index_python
    eigen
    eigen3_cmake_module
    eigen_stl_containers
    geometry_msgs
    interactive_markers
    launch
    launch_ros
    pluginlib
    qt5.qtbase
    rclcpp
    rclcpp_components
    rviz2
    rviz_common
    rviz_default_plugins
    rviz_ogre_vendor
    rviz_rendering
    sensor_msgs
    shape_msgs
    std_msgs
    tf2
    tf2_eigen
    tf2_geometry_msgs
    trajectory_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
