{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rcss3d_agent_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcss3d_agent";
  pkgFinal = final.rolling.rcss3d_agent;
  src = srcs.rcss3d_agent.rcss3d_agent;

  colconBuildDepends = [
    ament_cmake_ros
    rclcpp
    rcss3d_agent_msgs
  ];

  colconRunDepends = [
    rclcpp
    rcss3d_agent_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
