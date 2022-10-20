{
  cmake,
  doxygen,
  dynamic-graph-python,
  git,
  sot-core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sot-tools";
  pkgFinal = final.noetic.sot-tools;
  src = srcs.sot-tools.sot-tools;

  colconBuildDepends = [
    cmake
    doxygen
    dynamic-graph-python
    git
    sot-core
  ];

  colconRunDepends = [
    dynamic-graph-python
    sot-core
  ];

  colconTestDepends = [
  ];
}
