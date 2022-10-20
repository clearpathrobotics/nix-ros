{
  ament_cmake,
  ament_cmake_flake8,
  ament_cmake_pep257,
  ament_index_python,
  ament_lint_auto,
  builtin_interfaces,
  launch_system_modes,
  launch_testing_ament_cmake,
  launch_testing_ros,
  lifecycle_msgs,
  rclcpp,
  rclcpp_lifecycle,
  system_modes,
  system_modes_examples,
  system_modes_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_launch_system_modes";
  pkgFinal = final.rolling.test_launch_system_modes;
  src = srcs.system_modes.test_launch_system_modes;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    launch_system_modes
    lifecycle_msgs
    rclcpp
    rclcpp_lifecycle
    system_modes
    system_modes_examples
    system_modes_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    launch_system_modes
    lifecycle_msgs
    rclcpp
    rclcpp_lifecycle
    system_modes
    system_modes_examples
    system_modes_msgs
  ];

  colconTestDepends = [
    ament_cmake_flake8
    ament_cmake_pep257
    ament_index_python
    ament_lint_auto
    launch_testing_ament_cmake
    launch_testing_ros
  ];
}
