{
  ament_clang_format,
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,
  ament_index_cpp,
  ament_lint_auto,
  moveit_resources_panda_moveit_config,
  moveit_setup_app_plugins,
  moveit_setup_controllers,
  moveit_setup_core_plugins,
  moveit_setup_framework,
  moveit_setup_srdf_plugins,
  pluginlib,
  qt5,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit_setup_assistant";
  pkgFinal = final.rolling.moveit_setup_assistant;
  src = srcs.moveit.moveit_setup_assistant;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    moveit_setup_framework
    moveit_setup_srdf_plugins
    pluginlib
    qt5.qtbase
    rclcpp
  ];

  colconRunDepends = [
    ament_index_cpp
    moveit_setup_app_plugins
    moveit_setup_controllers
    moveit_setup_core_plugins
    moveit_setup_framework
    moveit_setup_srdf_plugins
    pluginlib
    qt5.qtbase
    rclcpp
  ];

  colconTestDepends = [
    ament_clang_format
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_xmllint
    ament_lint_auto
    moveit_resources_panda_moveit_config
  ];
}
