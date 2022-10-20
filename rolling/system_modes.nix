{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_flake8,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_pep257,
  ament_cmake_uncrustify,
  ament_index_python,
  ament_lint_auto,
  builtin_interfaces,
  launch_ros,
  launch_testing_ament_cmake,
  launch_testing_ros,
  rclcpp,
  rclcpp_lifecycle,
  ros2run,
  system_modes_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "system_modes";
  pkgFinal = final.rolling.system_modes;
  src = srcs.system_modes.system_modes;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rclcpp
    rclcpp_lifecycle
    system_modes_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    launch_ros
    rclcpp
    rclcpp_lifecycle
    system_modes_msgs
  ];

  colconTestDepends = [
    ament_cmake_cppcheck
    ament_cmake_cpplint
    ament_cmake_flake8
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_pep257
    ament_cmake_uncrustify
    ament_index_python
    ament_lint_auto
    launch_testing_ament_cmake
    launch_testing_ros
    ros2run
  ];
}
