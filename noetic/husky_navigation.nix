{
  amcl,
  base_local_planner,
  catkin,
  dwa_local_planner,
  gmapping,
  map_server,
  move_base,
  navfn,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "husky_navigation";
  pkgFinal = final.noetic.husky_navigation;
  src = srcs.husky.husky_navigation;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    amcl
    base_local_planner
    dwa_local_planner
    gmapping
    map_server
    move_base
    navfn
  ];

  colconTestDepends = [
  ];
}
