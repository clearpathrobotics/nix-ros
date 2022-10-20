{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_flake8,
  ament_cmake_lint_cmake,
  ament_cmake_pep257,
  ament_cmake_uncrustify,
  ament_cmake_xmllint,
  ament_lint_auto,
  laser_geometry,
  launch,
  launch_ros,
  message_filters,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  tf2,
  tf2_ros,
  tf2_sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pointcloud_to_laserscan";
  pkgFinal = final.rolling.pointcloud_to_laserscan;
  src = srcs.pointcloud_to_laserscan.pointcloud_to_laserscan;

  colconBuildDepends = [
    ament_cmake
    laser_geometry
    message_filters
    rclcpp
    rclcpp_components
    sensor_msgs
    tf2
    tf2_ros
    tf2_sensor_msgs
  ];

  colconRunDepends = [
    laser_geometry
    launch
    launch_ros
    message_filters
    rclcpp
    rclcpp_components
    sensor_msgs
    tf2
    tf2_ros
    tf2_sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_flake8
    ament_cmake_lint_cmake
    ament_cmake_pep257
    ament_cmake_uncrustify
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
