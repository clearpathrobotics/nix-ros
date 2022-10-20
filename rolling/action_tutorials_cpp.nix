{
  action_tutorials_interfaces,
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_action,
  rclcpp_components,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "action_tutorials_cpp";
  pkgFinal = final.rolling.action_tutorials_cpp;
  src = srcs.demos.action_tutorials_cpp;

  colconBuildDepends = [
    action_tutorials_interfaces
    ament_cmake
    rclcpp
    rclcpp_action
    rclcpp_components
  ];

  colconRunDepends = [
    action_tutorials_interfaces
    rclcpp
    rclcpp_action
    rclcpp_components
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
