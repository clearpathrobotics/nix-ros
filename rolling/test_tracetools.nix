{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_mypy,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  lifecycle_msgs,
  pkg-config,
  python3Packages,
  rclcpp,
  rclcpp_lifecycle,
  std_msgs,
  std_srvs,
  tracetools,
  tracetools_test,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_tracetools";
  pkgFinal = final.rolling.test_tracetools;
  src = srcs.ros2_tracing.test_tracetools;

  colconBuildDepends = [
    ament_cmake
    lifecycle_msgs
    pkg-config
    rclcpp
    rclcpp_lifecycle
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    lifecycle_msgs
    rclcpp
    rclcpp_lifecycle
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_cmake_mypy
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    python3Packages.pytest
    python3Packages.pytestcov
    tracetools
    tracetools_test
  ];
}
