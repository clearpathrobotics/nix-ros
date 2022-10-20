{
  ament_cmake,
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  python_cmake_module,
  rclcpp,
  rclpy,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_cli_remapping";
  pkgFinal = final.rolling.test_cli_remapping;
  src = srcs.system_tests.test_cli_remapping;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_auto
    python_cmake_module
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    rclcpp
    rclpy
    test_msgs
  ];
}
