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
  name = "ov_msckf";
  pkgFinal = final.noetic.ov_msckf;
  src = srcs.open_vins.ov_msckf;

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
