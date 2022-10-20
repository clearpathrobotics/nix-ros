{
  ament_cmake,
  bond,
  bondcpp,
  smclib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bond_core";
  pkgFinal = final.rolling.bond_core;
  src = srcs.bond_core.bond_core;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    bond
    bondcpp
    smclib
  ];

  colconTestDepends = [
  ];
}
