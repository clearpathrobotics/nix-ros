{
  catkin,
  costmap_queue,
  dlux_global_planner,
  dlux_plugins,
  dwb_critics,
  dwb_local_planner,
  dwb_msgs,
  dwb_plugins,
  global_planner_tests,
  locomotor,
  locomotor_msgs,
  locomove_base,
  nav_2d_msgs,
  nav_2d_utils,
  nav_core2,
  nav_core_adapter,
  nav_grid,
  nav_grid_iterators,
  nav_grid_pub_sub,
  nav_grid_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_navigation";
  pkgFinal = final.noetic.robot_navigation;
  src = srcs.robot_navigation.robot_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    costmap_queue
    dlux_global_planner
    dlux_plugins
    dwb_critics
    dwb_local_planner
    dwb_msgs
    dwb_plugins
    global_planner_tests
    locomotor
    locomotor_msgs
    locomove_base
    nav_2d_msgs
    nav_2d_utils
    nav_core2
    nav_core_adapter
    nav_grid
    nav_grid_iterators
    nav_grid_pub_sub
    nav_grid_server
  ];

  colconTestDepends = [
  ];
}
