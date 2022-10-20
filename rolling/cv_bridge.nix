{
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_cmake_ros,
  ament_index_python,
  ament_lint_auto,
  ament_lint_common,
  boost,
  opencv,
  python3Packages,
  python_cmake_module,
  rclcpp,
  rcpputils,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cv_bridge";
  pkgFinal = final.rolling.cv_bridge;
  src = srcs.vision_opencv.cv_bridge;

  colconBuildDepends = [
    ament_cmake_ros
    boost
    opencv
    python3Packages.numpy
    python3Packages.opencv3
    python_cmake_module
    rclcpp
    rcpputils
    sensor_msgs
  ];

  colconRunDepends = [
    ament_index_python
    boost
    opencv
    python3Packages.numpy
    python3Packages.opencv3
    rclcpp
    rcpputils
    sensor_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
  ];
}
