{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  boost,
  nao_command_msgs,
  nao_sensor_msgs,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nao_lola";
  pkgFinal = final.rolling.nao_lola;
  src = srcs.nao_lola.nao_lola;

  colconBuildDepends = [
    ament_cmake
    boost
    nao_command_msgs
    nao_sensor_msgs
    rclcpp
  ];

  colconRunDepends = [
    boost
    nao_command_msgs
    nao_sensor_msgs
    rclcpp
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
