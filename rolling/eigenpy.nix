{
  boost,
  cmake,
  doxygen,
  eigen,
  git,
  python3,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eigenpy";
  pkgFinal = final.rolling.eigenpy;
  src = srcs.eigenpy.eigenpy;

  colconBuildDepends = [
    boost
    cmake
    doxygen
    eigen
    git
    python3
    python3Packages.numpy
  ];

  colconRunDepends = [
    boost
    eigen
    python3
    python3Packages.numpy
  ];

  colconTestDepends = [
  ];
}
