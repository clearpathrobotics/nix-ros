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
  name = "dynamic-graph";
  pkgFinal = final.noetic.dynamic-graph;
  src = srcs.dynamic-graph.dynamic-graph;

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
