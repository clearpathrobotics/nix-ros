{
  bond,
  catkin,
  python3Packages,
  rospy,
  smclib,
  util-linux,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "bondpy";
  pkgFinal = final.noetic.bondpy;
  src = srcs.bond_core.bondpy;

  colconBuildDepends = [
    bond
    catkin
    python3Packages.setuptools
    rospy
    smclib
  ];

  colconRunDepends = [
    rospy
    smclib
    util-linux
  ];

  colconTestDepends = [
  ];
}
