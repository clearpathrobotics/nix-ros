{
  amcl,
  base_local_planner,
  catkin,
  diffbot_bringup,
  dwa_local_planner,
  map_server,
  move_base,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_navigation";
  pkgFinal = final.noetic.diffbot_navigation;
  src = srcs.diffbot.diffbot_navigation;

  colconBuildDepends = [
    amcl
    catkin
    diffbot_bringup
    map_server
    move_base
  ];

  colconRunDepends = [
    amcl
    base_local_planner
    diffbot_bringup
    dwa_local_planner
    map_server
    move_base
  ];

  colconTestDepends = [
  ];
}
