{
  amcl,
  catkin,
  gmapping,
  map_server,
  move_base,
  roslaunch,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ridgeback_navigation";
  pkgFinal = final.noetic.ridgeback_navigation;
  src = srcs.ridgeback.ridgeback_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    gmapping
    map_server
    move_base
    urdf
    xacro
  ];

  colconTestDepends = [
    roslaunch
  ];
}
