{
  blas,
  catkin,
  eigen,
  liblapack,
  roscpp,
  suitesparse,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sparse_bundle_adjustment";
  pkgFinal = final.noetic.sparse_bundle_adjustment;
  src = srcs.sparse_bundle_adjustment.sparse_bundle_adjustment;

  colconBuildDepends = [
    blas
    catkin
    eigen
    liblapack
    roscpp
    suitesparse
  ];

  colconRunDepends = [
    blas
    eigen
    liblapack
    roscpp
    suitesparse
  ];

  colconTestDepends = [
  ];
}
