{
  ament_cmake,
  ament_cmake_core,
  ament_lint_auto,
  ament_lint_common,
  generate_parameter_library,
  rclcpp,
  rclcpp_components,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "generate_parameter_library_example";
  pkgFinal = final.rolling.generate_parameter_library_example;
  src = srcs.generate_parameter_library.generate_parameter_library_example;

  colconBuildDepends = [
    ament_cmake
    generate_parameter_library
    rclcpp
    rclcpp_components
  ];

  colconRunDepends = [
    ament_cmake_core
    generate_parameter_library
    rclcpp
    rclcpp_components
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
