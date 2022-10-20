{
  catkin,
  genmsg,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gennodejs";
  pkgFinal = final.noetic.gennodejs;
  src = srcs.gennodejs.gennodejs;

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
