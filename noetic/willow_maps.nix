{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "willow_maps";
  pkgFinal = final.noetic.willow_maps;
  src = srcs.willow_maps.willow_maps;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
