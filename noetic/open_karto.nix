{
  boost,
  catkin,
  sparse_bundle_adjustment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "open_karto";
  pkgFinal = final.noetic.open_karto;
  src = srcs.open_karto.open_karto;

  colconBuildDepends = [
    boost
    catkin
    sparse_bundle_adjustment
  ];

  colconRunDepends = [
    boost
    sparse_bundle_adjustment
  ];

  colconTestDepends = [
  ];
}
