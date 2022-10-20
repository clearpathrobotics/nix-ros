{
  boost,
  eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ov_eval";
  pkgFinal = final.noetic.ov_eval;
  src = srcs.open_vins.ov_eval;

  colconBuildDepends = [
    boost
    eigen
  ];

  colconRunDepends = [
    boost
    eigen
  ];

  colconTestDepends = [
  ];
}
