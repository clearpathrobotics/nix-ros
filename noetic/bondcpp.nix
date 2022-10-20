{
  bond,
  boost,
  catkin,
  cmake_modules,
  roscpp,
  smclib,
  util-linux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bondcpp";
  pkgFinal = final.noetic.bondcpp;
  src = srcs.bond_core.bondcpp;

  colconBuildDepends = [
    bond
    boost
    catkin
    cmake_modules
    roscpp
    smclib
    util-linux
  ];

  colconRunDepends = [
    bond
    boost
    roscpp
    smclib
    util-linux
  ];

  colconTestDepends = [
  ];
}
