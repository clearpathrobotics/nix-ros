{
  boost,
  cmake,
  doxygen,
  eigen,
  git,
  graphviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "eiquadprog";
  pkgFinal = final.noetic.eiquadprog;
  src = srcs.eiquadprog.eiquadprog;

  colconBuildDepends = [
    boost
    cmake
    doxygen
    eigen
    git
    graphviz
  ];

  colconRunDepends = [
    boost
    eigen
    graphviz
  ];

  colconTestDepends = [
  ];
}
