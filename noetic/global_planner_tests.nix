{
  catkin,
  libyamlcpp,
  map_server,
  nav_core2,
  nav_msgs,
  pluginlib,
  roscpp,
  roslint,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "global_planner_tests";
  pkgFinal = final.noetic.global_planner_tests;
  src = srcs.robot_navigation.global_planner_tests;

  colconBuildDepends = [
    catkin
    libyamlcpp
    map_server
    nav_core2
    nav_msgs
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    libyamlcpp
    map_server
    nav_core2
    nav_msgs
    pluginlib
    roscpp
  ];

  colconTestDepends = [
    roslint
  ];
}
