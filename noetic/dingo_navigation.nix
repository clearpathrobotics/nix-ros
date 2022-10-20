{
  amcl,
  catkin,
  gmapping,
  map_server,
  move_base,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dingo_navigation";
  pkgFinal = final.noetic.dingo_navigation;
  src = srcs.dingo.dingo_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    gmapping
    map_server
    move_base
  ];

  colconTestDepends = [
    roslaunch
  ];
}
