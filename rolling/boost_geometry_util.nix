{
  ament_cmake,
  ament_cmake_auto,
  ament_lint_auto,
  boost,
  geometry_msgs,
  ouxt_common,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "boost_geometry_util";
  pkgFinal = final.rolling.boost_geometry_util;
  src = srcs.boost_geometry_util.boost_geometry_util;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_auto
    boost
    geometry_msgs
    rclcpp
  ];

  colconRunDepends = [
    boost
    geometry_msgs
    rclcpp
  ];

  colconTestDepends = [
    ament_lint_auto
    ouxt_common
  ];
}
