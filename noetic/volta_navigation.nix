{
  amcl,
  catkin,
  dwa_local_planner,
  global_planner,
  gmapping,
  map_server,
  move_base,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "volta_navigation";
  pkgFinal = final.noetic.volta_navigation;
  src = srcs.volta.volta_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    dwa_local_planner
    global_planner
    gmapping
    map_server
    move_base
  ];

  colconTestDepends = [
  ];
}
