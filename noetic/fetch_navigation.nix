{
  amcl,
  base_local_planner,
  catkin,
  clear_costmap_recovery,
  costmap_2d,
  fetch_depth_layer,
  fetch_maps,
  map_server,
  move_base,
  move_base_msgs,
  navfn,
  roslaunch,
  rotate_recovery,
  slam_karto,
  voxel_grid,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_navigation";
  pkgFinal = final.noetic.fetch_navigation;
  src = srcs.fetch_ros.fetch_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    base_local_planner
    clear_costmap_recovery
    costmap_2d
    fetch_depth_layer
    fetch_maps
    map_server
    move_base
    move_base_msgs
    navfn
    rotate_recovery
    slam_karto
    voxel_grid
  ];

  colconTestDepends = [
    roslaunch
  ];
}
