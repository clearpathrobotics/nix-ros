{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  camera_calibration_parsers,
  rclcpp,
  rclcpp_lifecycle,
  rcpputils,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "camera_info_manager";
  pkgFinal = final.rolling.camera_info_manager;
  src = srcs.image_common.camera_info_manager;

  colconBuildDepends = [
    ament_cmake_ros
    ament_index_cpp
    camera_calibration_parsers
    rclcpp
    rclcpp_lifecycle
    rcpputils
    sensor_msgs
  ];

  colconRunDepends = [
    ament_index_cpp
    camera_calibration_parsers
    rclcpp
    rclcpp_lifecycle
    rcpputils
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
