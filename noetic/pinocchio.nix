{
  boost,
  clang,
  cmake,
  doxygen,
  eigen,
  eigenpy,
  git,
  hpp-fcl,
  python3,
  python3Packages,
  urdfdom,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pinocchio";
  pkgFinal = final.noetic.pinocchio;
  src = srcs.pinocchio.pinocchio;

  colconBuildDepends = [
    boost
    clang
    cmake
    doxygen
    eigen
    eigenpy
    git
    hpp-fcl
    python3
    python3Packages.numpy
    urdfdom
  ];

  colconRunDepends = [
    boost
    eigen
    eigenpy
    hpp-fcl
    python3
    python3Packages.numpy
    urdfdom
  ];

  colconTestDepends = [
  ];
}
