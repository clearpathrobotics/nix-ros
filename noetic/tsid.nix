{
  boost,
  cmake,
  doxygen,
  eigenpy,
  eiquadprog,
  git,
  graphviz,
  pinocchio,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tsid";
  pkgFinal = final.noetic.tsid;
  src = srcs.tsid.tsid;

  colconBuildDepends = [
    boost
    cmake
    doxygen
    eigenpy
    eiquadprog
    git
    graphviz
    pinocchio
  ];

  colconRunDepends = [
    boost
    eigenpy
    eiquadprog
    graphviz
    pinocchio
  ];

  colconTestDepends = [
  ];
}
