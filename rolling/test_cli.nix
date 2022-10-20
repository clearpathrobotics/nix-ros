{
  ament_cmake,
  ament_cmake_auto,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  python_cmake_module,
  rcl_interfaces,
  rclcpp,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_cli";
  pkgFinal = final.rolling.test_cli;
  src = srcs.system_tests.test_cli;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_auto
    python_cmake_module
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    rcl_interfaces
    rclcpp
    rclpy
  ];
}
