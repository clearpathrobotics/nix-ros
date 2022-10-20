{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp_components,
  rcss3d_agent,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcss3d_agent_basic";
  pkgFinal = final.rolling.rcss3d_agent_basic;
  src = srcs.rcss3d_agent.rcss3d_agent_basic;

  colconBuildDepends = [
    ament_cmake
    rclcpp_components
    rcss3d_agent
  ];

  colconRunDepends = [
    rclcpp_components
    rcss3d_agent
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
