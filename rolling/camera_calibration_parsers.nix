{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rcpputils,
  sensor_msgs,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "camera_calibration_parsers";
  pkgFinal = final.rolling.camera_calibration_parsers;
  src = srcs.image_common.camera_calibration_parsers;

  colconBuildDepends = [
    ament_cmake_ros
    rclcpp
    rcpputils
    sensor_msgs
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    rclcpp
    rcpputils
    sensor_msgs
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
