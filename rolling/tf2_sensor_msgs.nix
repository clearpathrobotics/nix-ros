{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  eigen3_cmake_module,
  geometry_msgs,
  python3Packages,
  python_cmake_module,
  rclcpp,
  sensor_msgs,
  sensor_msgs_py,
  std_msgs,
  tf2,
  tf2_ros,
  tf2_ros_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_sensor_msgs";
  pkgFinal = final.rolling.tf2_sensor_msgs;
  src = srcs.geometry2.tf2_sensor_msgs;

  colconBuildDepends = [
    ament_cmake
    eigen
    eigen3_cmake_module
    geometry_msgs
    python_cmake_module
    sensor_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    eigen
    eigen3_cmake_module
    geometry_msgs
    python3Packages.numpy
    sensor_msgs
    sensor_msgs_py
    std_msgs
    tf2
    tf2_ros
    tf2_ros_py
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    rclcpp
  ];
}
