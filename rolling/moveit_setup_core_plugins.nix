{
  ament_clang_format,
  ament_cmake,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,
  ament_index_cpp,
  ament_lint_auto,
  moveit_ros_visualization,
  moveit_setup_framework,
  pluginlib,
  rclcpp,
  srdfdom,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_setup_core_plugins";
  pkgFinal = final.rolling.moveit_setup_core_plugins;
  src = srcs.moveit.moveit_setup_core_plugins;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    moveit_ros_visualization
    moveit_setup_framework
    pluginlib
    rclcpp
    srdfdom
    urdf
  ];

  colconRunDepends = [
    ament_index_cpp
    moveit_ros_visualization
    moveit_setup_framework
    pluginlib
    rclcpp
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
