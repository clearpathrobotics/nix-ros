{
  ament_cmake,
  geometry_msgs,
  nav2z_planners_common,
  nav_msgs,
  pluginlib,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "forward_global_planner";
  pkgFinal = final.rolling.forward_global_planner;
  src = srcs.SMACC2.forward_global_planner;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    nav2z_planners_common
    nav_msgs
    pluginlib
    tf2
  ];

  colconRunDepends = [
    geometry_msgs
    nav2z_planners_common
    nav_msgs
    tf2
  ];

  colconTestDepends = [
  ];
}
