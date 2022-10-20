{
  catkin,
  unzip,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "convex_decomposition";
  pkgFinal = final.noetic.convex_decomposition;
  src = srcs.convex_decomposition.convex_decomposition;

  colconBuildDepends = [
    catkin
    unzip
  ];

  colconRunDepends = [
    unzip
  ];

  colconTestDepends = [
  ];
}
