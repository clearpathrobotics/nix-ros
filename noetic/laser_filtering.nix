{
  catkin,
  map_laser,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_filtering";
  pkgFinal = final.noetic.laser_filtering;
  src = srcs.laser_filtering.laser_filtering;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    map_laser
  ];

  colconTestDepends = [
  ];
}
