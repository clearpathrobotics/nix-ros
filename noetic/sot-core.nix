{
  boost,
  cmake,
  doxygen,
  dynamic-graph,
  dynamic-graph-python,
  pinocchio,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sot-core";
  pkgFinal = final.noetic.sot-core;
  src = srcs.sot-core.sot-core;

  colconBuildDepends = [
    boost
    cmake
    doxygen
    dynamic-graph
    dynamic-graph-python
    pinocchio
  ];

  colconRunDepends = [
    boost
    dynamic-graph
    dynamic-graph-python
    pinocchio
  ];

  colconTestDepends = [
  ];
}
