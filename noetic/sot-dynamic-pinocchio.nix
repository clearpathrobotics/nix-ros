{
  cmake,
  doxygen,
  dynamic-graph-python,
  git,
  gtest,
  liblapack,
  openblas,
  pinocchio,
  sot-core,
  sot-tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sot-dynamic-pinocchio";
  pkgFinal = final.noetic.sot-dynamic-pinocchio;
  src = srcs.sot-dynamic-pinocchio.sot-dynamic-pinocchio;

  colconBuildDepends = [
    cmake
    doxygen
    dynamic-graph-python
    git
    liblapack
    openblas
    pinocchio
    sot-core
    sot-tools
  ];

  colconRunDepends = [
    dynamic-graph-python
    liblapack
    openblas
    pinocchio
    sot-core
    sot-tools
  ];

  colconTestDepends = [
    gtest
  ];
}
