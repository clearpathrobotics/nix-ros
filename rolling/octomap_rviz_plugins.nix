{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  octomap_msgs,
  qt5,
  rclcpp,
  rviz_common,
  rviz_default_plugins,
  rviz_rendering,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "octomap_rviz_plugins";
  pkgFinal = final.rolling.octomap_rviz_plugins;
  src = srcs.octomap_rviz_plugins.octomap_rviz_plugins;

  colconBuildDepends = [
    ament_cmake_auto
    octomap_msgs
    qt5.qtbase
    rclcpp
    rviz_common
    rviz_default_plugins
    rviz_rendering
  ];

  colconRunDepends = [
    octomap_msgs
    qt5.qtbase
    rclcpp
    rviz_common
    rviz_default_plugins
    rviz_rendering
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
