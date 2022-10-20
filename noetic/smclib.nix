{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "smclib";
  pkgFinal = final.noetic.smclib;
  src = srcs.bond_core.smclib;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
