{
  bond,
  bondcpp,
  bondpy,
  catkin,
  smclib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bond_core";
  pkgFinal = final.noetic.bond_core;
  src = srcs.bond_core.bond_core;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    bond
    bondcpp
    bondpy
    smclib
  ];

  colconTestDepends = [
  ];
}
