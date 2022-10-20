{
  catkin,
  genmsg,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gencpp";
  pkgFinal = final.noetic.gencpp;
  src = srcs.gencpp.gencpp;

  colconBuildDepends = [
    catkin
    genmsg
    python3Packages.setuptools
  ];

  colconRunDepends = [
    genmsg
  ];

  colconTestDepends = [
  ];
}
