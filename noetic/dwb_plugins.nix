{
  angles,
  catkin,
  dwb_local_planner,
  dynamic_reconfigure,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  pluginlib,
  roscpp,
  roslint,
  rostest,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dwb_plugins";
  pkgFinal = final.noetic.dwb_plugins;
  src = srcs.robot_navigation.dwb_plugins;

  colconBuildDepends = [
    angles
    catkin
    dwb_local_planner
    dynamic_reconfigure
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    angles
    dwb_local_planner
    dynamic_reconfigure
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    pluginlib
    roscpp
  ];

  colconTestDepends = [
    roslint
    rostest
    rosunit
  ];
}
