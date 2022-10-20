{
  catkin,
  gmapping,
  map_server,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober_slam";
  pkgFinal = final.noetic.clober_slam;
  src = srcs.clober.clober_slam;

  colconBuildDepends = [
    catkin
    gmapping
    map_server
  ];

  colconRunDepends = [
    gmapping
    map_server
  ];

  colconTestDepends = [
  ];
}
