{
  amcl,
  catkin,
  map_server,
  move_base,
  turtlebot3_bringup,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_navigation";
  pkgFinal = final.noetic.turtlebot3_navigation;
  src = srcs.turtlebot3.turtlebot3_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    map_server
    move_base
    turtlebot3_bringup
  ];

  colconTestDepends = [
  ];
}
