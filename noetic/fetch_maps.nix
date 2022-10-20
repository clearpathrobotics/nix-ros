{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fetch_maps";
  pkgFinal = final.noetic.fetch_maps;
  src = srcs.fetch_ros.fetch_maps;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
