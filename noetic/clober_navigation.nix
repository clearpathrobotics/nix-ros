{
  amcl,
  base_local_planner,
  catkin,
  costmap_2d,
  costmap_converter,
  map_server,
  move_base,
  roslint,
  teb_local_planner,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober_navigation";
  pkgFinal = final.noetic.clober_navigation;
  src = srcs.clober.clober_navigation;

  colconBuildDepends = [
    amcl
    base_local_planner
    catkin
    costmap_2d
    costmap_converter
    map_server
    move_base
    roslint
    teb_local_planner
  ];

  colconRunDepends = [
    amcl
    base_local_planner
    costmap_2d
    costmap_converter
    map_server
    move_base
    teb_local_planner
  ];

  colconTestDepends = [
  ];
}
