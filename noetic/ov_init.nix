{
  boost,
  ceres-solver,
  eigen,
  opencv,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ov_init";
  pkgFinal = final.noetic.ov_init;
  src = srcs.open_vins.ov_init;

  colconBuildDepends = [
    boost
    ceres-solver
    eigen
    opencv
  ];

  colconRunDepends = [
    boost
    ceres-solver
    eigen
    opencv
  ];

  colconTestDepends = [
  ];
}
