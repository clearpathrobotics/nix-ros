{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  diagnostic_msgs,
  diagnostic_updater,
  libpcap,
  rclcpp,
  rclcpp_components,
  tf2_ros,
  velodyne_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_driver";
  pkgFinal = final.rolling.velodyne_driver;
  src = srcs.velodyne.velodyne_driver;

  colconBuildDepends = [
    ament_cmake_ros
    diagnostic_msgs
    diagnostic_updater
    libpcap
    rclcpp
    rclcpp_components
    tf2_ros
    velodyne_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    libpcap
    rclcpp
    rclcpp_components
    tf2_ros
    velodyne_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
