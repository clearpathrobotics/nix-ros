{
  boost,
  eigen,
  opencv,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ov_core";
  pkgFinal = final.noetic.ov_core;
  src = srcs.open_vins.ov_core;

  colconBuildDepends = [
    boost
    eigen
    opencv
  ];

  colconRunDepends = [
    boost
    eigen
    opencv
  ];

  colconTestDepends = [
  ];
}
