{
  ament_cmake,
  geometry_msgs,
  nav2z_planners_common,
  nav_msgs,
  std_msgs,
  tf2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "forward_local_planner";
  pkgFinal = final.rolling.forward_local_planner;
  src = srcs.SMACC2.forward_local_planner;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    nav2z_planners_common
    nav_msgs
    std_msgs
    tf2
  ];

  colconRunDepends = [
    geometry_msgs
    nav2z_planners_common
    nav_msgs
    std_msgs
    tf2
  ];

  colconTestDepends = [
  ];
}
