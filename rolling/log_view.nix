{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  ncurses,
  rcl_interfaces,
  rclcpp,
  xclip,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "log_view";
  pkgFinal = final.rolling.log_view;
  src = srcs.log_view.log_view;

  colconBuildDepends = [
    ament_cmake
    ncurses
    rcl_interfaces
    rclcpp
  ];

  colconRunDepends = [
    ncurses
    rcl_interfaces
    rclcpp
    xclip
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
