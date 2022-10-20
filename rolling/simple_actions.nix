{
  action_msgs,
  ament_cmake,
  ament_cmake_clang_format,
  ament_cmake_cppcheck,
  ament_cmake_flake8,
  ament_cmake_lint_cmake,
  ament_cmake_pep257,
  ament_cmake_python,
  rclcpp,
  rclcpp_action,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "simple_actions";
  pkgFinal = final.rolling.simple_actions;
  src = srcs.simple_actions.simple_actions;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    ament_cmake_python
    rclcpp
    rclcpp_action
    rclpy
  ];

  colconRunDepends = [
    action_msgs
    rclcpp
    rclcpp_action
    rclpy
  ];

  colconTestDepends = [
    ament_cmake_clang_format
    ament_cmake_cppcheck
    ament_cmake_flake8
    ament_cmake_lint_cmake
    ament_cmake_pep257
  ];
}
