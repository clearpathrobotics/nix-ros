{
  action_tutorials_interfaces,
  ament_lint_auto,
  ament_lint_common,
  rclpy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "action_tutorials_py";
  pkgFinal = final.rolling.action_tutorials_py;
  src = srcs.demos.action_tutorials_py;

  colconBuildDepends = [
    action_tutorials_interfaces
  ];

  colconRunDepends = [
    action_tutorials_interfaces
    rclpy
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
