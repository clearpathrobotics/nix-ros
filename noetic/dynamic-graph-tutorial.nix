{
  boost,
  cmake,
  doxygen,
  dynamic-graph,
  dynamic-graph-python,
  git,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamic-graph-tutorial";
  pkgFinal = final.noetic.dynamic-graph-tutorial;
  src = srcs.dynamic-graph-tutorial.dynamic-graph-tutorial;

  colconBuildDepends = [
    boost
    cmake
    doxygen
    dynamic-graph
    dynamic-graph-python
    git
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
  ];
}
