{
  catkin,
  dwb_msgs,
  geometry_msgs,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  nav_msgs,
  pluginlib,
  roscpp,
  roslint,
  rostest,
  rosunit,
  sensor_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dwb_local_planner";
  pkgFinal = final.noetic.dwb_local_planner;
  src = srcs.robot_navigation.dwb_local_planner;

  colconBuildDepends = [
    catkin
    dwb_msgs
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_msgs
    pluginlib
    roscpp
    sensor_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    dwb_msgs
    geometry_msgs
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_msgs
    pluginlib
    roscpp
    sensor_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
    rosunit
  ];
}
