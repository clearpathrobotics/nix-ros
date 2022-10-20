{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rcss3d_agent_msgs,
  soccer_vision_3d_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rcss3d_agent_msgs_to_soccer_interfaces";
  pkgFinal = final.rolling.rcss3d_agent_msgs_to_soccer_interfaces;
  src = srcs.rcss3d_agent.rcss3d_agent_msgs_to_soccer_interfaces;

  colconBuildDepends = [
    ament_cmake
    rcss3d_agent_msgs
    soccer_vision_3d_msgs
  ];

  colconRunDepends = [
    rcss3d_agent_msgs
    soccer_vision_3d_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
