{
  ament_cmake,
  ament_cmake_cppcheck,
  ament_cmake_cpplint,
  ament_cmake_flake8,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_pep257,
  ament_cmake_uncrustify,
  ament_lint_auto,
  launch,
  launch_system_modes,
  rclcpp,
  rclcpp_lifecycle,
  ros2launch,
  system_modes,
  system_modes_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "system_modes_examples";
  pkgFinal = final.rolling.system_modes_examples;
  src = srcs.system_modes.system_modes_examples;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_lifecycle
    system_modes
    system_modes_msgs
  ];

  colconRunDepends = [
    launch
    launch_system_modes
    rclcpp
    rclcpp_lifecycle
    ros2launch
    system_modes
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
    ament_lint_auto
  ];
}
