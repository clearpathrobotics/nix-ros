{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "baldor";
  pkgFinal = final.noetic.baldor;
  src = srcs.baldor.baldor;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    python3Packages.numpy
  ];

  colconTestDepends = [
  ];
}
