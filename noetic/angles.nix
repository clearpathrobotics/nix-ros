{
  catkin,
  python3Packages,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "angles";
  pkgFinal = final.noetic.angles;
  src = srcs.angles.angles;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    rosunit
  ];
}
