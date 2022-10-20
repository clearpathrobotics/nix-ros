{
  ament_clang_format,
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,
  ament_index_cpp,
  ament_lint_auto,
  moveit_resources_fanuc_moveit_config,
  moveit_resources_panda_moveit_config,
  moveit_setup_framework,
  pluginlib,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_setup_controllers";
  pkgFinal = final.rolling.moveit_setup_controllers;
  src = srcs.moveit.moveit_setup_controllers;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    moveit_setup_framework
    pluginlib
    rclcpp
  ];

  colconRunDepends = [
    ament_index_cpp
    moveit_setup_framework
    pluginlib
    rclcpp
  ];

  colconTestDepends = [
    ament_clang_format
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_xmllint
    ament_lint_auto
    moveit_resources_fanuc_moveit_config
    moveit_resources_panda_moveit_config
  ];
}
