{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  fmt,
  generate_parameter_library_py,
  parameter_traits,
  rclcpp,
  rclcpp_lifecycle,
  tcb_span,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "generate_parameter_library";
  pkgFinal = final.rolling.generate_parameter_library;
  src = srcs.generate_parameter_library.generate_parameter_library;

  colconBuildDepends = [
    ament_cmake
    fmt
    parameter_traits
    rclcpp
    rclcpp_lifecycle
    tcb_span
  ];

  colconRunDepends = [
    fmt
    generate_parameter_library_py
    parameter_traits
    rclcpp
    rclcpp_lifecycle
    tcb_span
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
