{
  assimp,
  boost,
  cmake,
  doxygen,
  eigen,
  eigenpy,
  git,
  python3,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hpp-fcl";
  pkgFinal = final.rolling.hpp-fcl;
  src = srcs.hpp-fcl.hpp-fcl;

  colconBuildDepends = [
    assimp
    boost
    cmake
    doxygen
    eigen
    eigenpy
    git
    python3
    python3Packages.lxml
    python3Packages.numpy
  ];

  colconRunDepends = [
    assimp
    boost
    eigen
    eigenpy
    python3
    python3Packages.numpy
  ];

  colconTestDepends = [
  ];
}
