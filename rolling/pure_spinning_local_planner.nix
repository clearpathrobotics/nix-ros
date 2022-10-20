{
  ament_cmake,
  geometry_msgs,
  nav2z_planners_common,
  nav_msgs,
  pluginlib,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pure_spinning_local_planner";
  pkgFinal = final.rolling.pure_spinning_local_planner;
  src = srcs.SMACC2.pure_spinning_local_planner;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    nav2z_planners_common
    nav_msgs
    pluginlib
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    geometry_msgs
    nav2z_planners_common
    nav_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
