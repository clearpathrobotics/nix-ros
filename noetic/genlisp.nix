{
  catkin,
  genmsg,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "genlisp";
  pkgFinal = final.noetic.genlisp;
  src = srcs.genlisp.genlisp;

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
