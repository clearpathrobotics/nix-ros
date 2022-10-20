{
  catkin,
  genmsg,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "genpy";
  pkgFinal = final.noetic.genpy;
  src = srcs.genpy.genpy;

  colconBuildDepends = [
    catkin
    genmsg
    python3Packages.setuptools
  ];

  colconRunDepends = [
    genmsg
    python3Packages.pyyaml
  ];

  colconTestDepends = [
    python3Packages.numpy
  ];
}
