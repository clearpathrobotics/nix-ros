{
  amcl,
  base_local_planner,
  carrot_planner,
  catkin,
  clear_costmap_recovery,
  costmap_2d,
  dwa_local_planner,
  fake_localization,
  global_planner,
  map_server,
  move_base,
  move_base_msgs,
  move_slow_and_clear,
  nav_core,
  navfn,
  rotate_recovery,
  voxel_grid,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "navigation";
  pkgFinal = final.noetic.navigation;
  src = srcs.navigation.navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    base_local_planner
    carrot_planner
    clear_costmap_recovery
    costmap_2d
    dwa_local_planner
    fake_localization
    global_planner
    map_server
    move_base
    move_base_msgs
    move_slow_and_clear
    nav_core
    navfn
    rotate_recovery
    voxel_grid
  ];

  colconTestDepends = [
  ];
}
