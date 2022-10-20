{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "genmsg";
  pkgFinal = final.noetic.genmsg;
  src = srcs.genmsg.genmsg;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    catkin
    python3Packages.empy
  ];

  colconTestDepends = [
  ];
}
