{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  fmt,
  rclcpp,
  tcb_span,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "parameter_traits";
  pkgFinal = final.rolling.parameter_traits;
  src = srcs.generate_parameter_library.parameter_traits;

  colconBuildDepends = [
    ament_cmake
    fmt
    rclcpp
    tcb_span
  ];

  colconRunDepends = [
    fmt
    rclcpp
    tcb_span
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
