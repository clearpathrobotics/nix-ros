{
  catkin,
  dlux_global_planner,
  global_planner_tests,
  nav_core2,
  nav_grid,
  pluginlib,
  roslint,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dlux_plugins";
  pkgFinal = final.noetic.dlux_plugins;
  src = srcs.robot_navigation.dlux_plugins;

  colconBuildDepends = [
    catkin
    dlux_global_planner
    nav_core2
    nav_grid
    pluginlib
  ];

  colconRunDepends = [
    dlux_global_planner
    nav_core2
    nav_grid
    pluginlib
  ];

  colconTestDepends = [
    global_planner_tests
    roslint
    rostest
  ];
}
