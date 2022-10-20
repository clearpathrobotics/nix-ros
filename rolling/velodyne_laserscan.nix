{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velodyne_laserscan";
  pkgFinal = final.rolling.velodyne_laserscan;
  src = srcs.velodyne.velodyne_laserscan;

  colconBuildDepends = [
    ament_cmake_ros
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
