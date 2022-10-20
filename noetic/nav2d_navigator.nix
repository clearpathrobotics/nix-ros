{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav2d_msgs,
  nav2d_operator,
  pluginlib,
  roscpp,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2d_navigator";
  pkgFinal = final.noetic.nav2d_navigator;
  src = srcs.navigation_2d.nav2d_navigator;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    nav2d_msgs
    nav2d_operator
    pluginlib
    roscpp
    std_srvs
    tf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_runtime
    nav2d_msgs
    nav2d_operator
    pluginlib
    roscpp
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
