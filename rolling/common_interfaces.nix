{
  actionlib_msgs,
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  diagnostic_msgs,
  geometry_msgs,
  nav_msgs,
  sensor_msgs,
  shape_msgs,
  std_msgs,
  std_srvs,
  stereo_msgs,
  trajectory_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "common_interfaces";
  pkgFinal = final.rolling.common_interfaces;
  src = srcs.common_interfaces.common_interfaces;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    actionlib_msgs
    builtin_interfaces
    diagnostic_msgs
    geometry_msgs
    nav_msgs
    sensor_msgs
    shape_msgs
    std_msgs
    std_srvs
    stereo_msgs
    trajectory_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
