{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_components,
  rmf_fleet_msgs,
  rmf_utils,
  rmf_visualization_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_visualization_fleet_states";
  pkgFinal = final.rolling.rmf_visualization_fleet_states;
  src = srcs.rmf_visualization.rmf_visualization_fleet_states;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_components
    rmf_fleet_msgs
    rmf_visualization_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    rmf_fleet_msgs
    rmf_visualization_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    rmf_utils
  ];
}
