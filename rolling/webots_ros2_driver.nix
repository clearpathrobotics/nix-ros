{
  ament_cmake,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  pluginlib,
  python_cmake_module,
  rclcpp,
  rclpy,
  ros_environment,
  sensor_msgs,
  std_msgs,
  tf2_ros,
  tinyxml2_vendor,
  vision_msgs,
  webots_ros2_importer,
  webots_ros2_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_driver";
  pkgFinal = final.rolling.webots_ros2_driver;
  src = srcs.webots_ros2.webots_ros2_driver;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    geometry_msgs
    pluginlib
    python_cmake_module
    rclcpp
    rclpy
    ros_environment
    sensor_msgs
    std_msgs
    tf2_ros
    tinyxml2_vendor
    vision_msgs
    webots_ros2_importer
    webots_ros2_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    pluginlib
    rclcpp
    rclpy
    sensor_msgs
    std_msgs
    tf2_ros
    tinyxml2_vendor
    vision_msgs
    webots_ros2_importer
    webots_ros2_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
