{
  catkin,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosmake";
  pkgFinal = final.noetic.rosmake;
  src = srcs.ros.rosmake;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    catkin
    python3Packages.rospkg
  ];

  colconTestDepends = [
  ];
}
