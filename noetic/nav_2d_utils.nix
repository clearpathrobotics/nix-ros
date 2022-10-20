{
  catkin,
  geometry_msgs,
  nav_2d_msgs,
  nav_core2,
  nav_grid,
  nav_msgs,
  pluginlib,
  roscpp,
  roslint,
  rostest,
  rosunit,
  std_msgs,
  tf,
  tf2_geometry_msgs,
  tf2_ros,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_2d_utils";
  pkgFinal = final.noetic.nav_2d_utils;
  src = srcs.robot_navigation.nav_2d_utils;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_2d_msgs
    nav_core2
    nav_grid
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    tf
    tf2_geometry_msgs
    tf2_ros
    xmlrpcpp
  ];

  colconRunDepends = [
    geometry_msgs
    nav_2d_msgs
    nav_core2
    nav_grid
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    tf
    tf2_geometry_msgs
    tf2_ros
    xmlrpcpp
  ];

  colconTestDepends = [
    roslint
    rostest
    rosunit
  ];
}
