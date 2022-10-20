{
  ament_cmake,
  angles,
  forward_global_planner,
  geometry_msgs,
  nav_msgs,
  tf2,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "backward_global_planner";
  pkgFinal = final.rolling.backward_global_planner;
  src = srcs.SMACC2.backward_global_planner;

  colconBuildDepends = [
    ament_cmake
    angles
    forward_global_planner
    geometry_msgs
    nav_msgs
    tf2
    visualization_msgs
  ];

  colconRunDepends = [
    angles
    forward_global_planner
    geometry_msgs
    nav_msgs
    tf2
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
