{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosclean";
  pkgFinal = final.noetic.rosclean;
  src = srcs.ros.rosclean;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.rospkg
  ];

  colconTestDepends = [
  ];
}
