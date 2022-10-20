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
  name = "jackal_navigation";
  pkgFinal = final.noetic.jackal_navigation;
  src = srcs.jackal.jackal_navigation;

  colconBuildDepends = [
    catkin
    roslaunch
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
  ];
}
