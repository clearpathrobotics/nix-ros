{
  boost,
  cmake,
  doxygen,
  dynamic-graph,
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
  name = "dynamic-graph-python";
  pkgFinal = final.noetic.dynamic-graph-python;
  src = srcs.dynamic-graph-python.dynamic-graph-python;

  colconBuildDepends = [
    boost
    cmake
    doxygen
    dynamic-graph
    eigen
    eigenpy
    git
    python3
    python3Packages.numpy
  ];

  colconRunDepends = [
    boost
    dynamic-graph
    eigen
    eigenpy
    python3
    python3Packages.numpy
  ];

  colconTestDepends = [
  ];
}
