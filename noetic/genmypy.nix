{
  catkin,
  genmsg,
  genpy,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "genmypy";
  pkgFinal = final.noetic.genmypy;
  src = srcs.genmypy.genmypy;

  colconBuildDepends = [
    catkin
    genmsg
    genpy
    python3Packages.setuptools
  ];

  colconRunDepends = [
    genmsg
    genpy
  ];

  colconTestDepends = [
  ];
}
