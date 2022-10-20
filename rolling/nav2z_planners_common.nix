{
  ament_cmake,
  angles,
  geometry_msgs,
  nav_msgs,
  rclcpp,
  tf2,
  tf2_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2z_planners_common";
  pkgFinal = final.rolling.nav2z_planners_common;
  src = srcs.SMACC2.nav2z_planners_common;

  colconBuildDepends = [
    ament_cmake
    angles
    geometry_msgs
    nav_msgs
    rclcpp
    tf2
    tf2_geometry_msgs
  ];

  colconRunDepends = [
    angles
    geometry_msgs
    nav_msgs
    rclcpp
    tf2
    tf2_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
