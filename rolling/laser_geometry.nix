{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_gtest,
  ament_cmake_lint_cmake,
  ament_cmake_pytest,
  ament_cmake_uncrustify,
  eigen,
  eigen3_cmake_module,
  python3Packages,
  python_cmake_module,
  rclcpp,
  rclpy,
  sensor_msgs,
  sensor_msgs_py,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_geometry";
  pkgFinal = final.rolling.laser_geometry;
  src = srcs.laser_geometry.laser_geometry;

  colconBuildDepends = [
    ament_cmake
    eigen
    eigen3_cmake_module
    rclcpp
    sensor_msgs
    tf2
  ];

  colconRunDepends = [
    eigen
    eigen3_cmake_module
    python3Packages.numpy
    rclcpp
    rclpy
    sensor_msgs
    sensor_msgs_py
    tf2
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_gtest
    ament_cmake_lint_cmake
    ament_cmake_pytest
    ament_cmake_uncrustify
    python_cmake_module
  ];
}
