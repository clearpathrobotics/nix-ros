{
  catkin,
  genmsg,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "geneus";
  pkgFinal = final.noetic.geneus;
  src = srcs.geneus.geneus;

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
