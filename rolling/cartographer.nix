{
  abseil-cpp,
  boost,
  cairo,
  ceres-solver,
  cmake,
  eigen,
  gflags,
  git,
  glog,
  gtest,
  lua5,
  protobuf,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cartographer";
  pkgFinal = final.rolling.cartographer;
  src = srcs.cartographer.cartographer;

  colconBuildDepends = [
    abseil-cpp
    boost
    cairo
    ceres-solver
    cmake
    eigen
    gflags
    git
    glog
    gtest
    lua5
    protobuf
    python3Packages.sphinx
  ];

  colconRunDepends = [
    abseil-cpp
    boost
    cairo
    ceres-solver
    eigen
    gflags
    glog
    lua5
    protobuf
  ];

  colconTestDepends = [
  ];
}
