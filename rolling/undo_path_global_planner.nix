{
  ament_cmake,
  geometry_msgs,
  nav2z_planners_common,
  nav_msgs,
  rclcpp,
  tf2,
  tf2_geometry_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "undo_path_global_planner";
  pkgFinal = final.rolling.undo_path_global_planner;
  src = srcs.SMACC2.undo_path_global_planner;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    nav2z_planners_common
    nav_msgs
    rclcpp
    tf2
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nav2z_planners_common
    nav_msgs
    rclcpp
    tf2
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
