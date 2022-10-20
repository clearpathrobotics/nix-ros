{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  nao_command_msgs,
  nao_sensor_msgs,
  rclcpp_components,
  rcss3d_agent,
  rcss3d_agent_msgs_to_soccer_interfaces,
  soccer_vision_3d_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcss3d_nao";
  pkgFinal = final.rolling.rcss3d_nao;
  src = srcs.rcss3d_nao.rcss3d_nao;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    nao_command_msgs
    nao_sensor_msgs
    rclcpp_components
    rcss3d_agent
    rcss3d_agent_msgs_to_soccer_interfaces
    soccer_vision_3d_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nao_command_msgs
    nao_sensor_msgs
    rclcpp_components
    rcss3d_agent
    rcss3d_agent_msgs_to_soccer_interfaces
    soccer_vision_3d_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
