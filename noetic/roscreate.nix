{
  catkin,
  python3Packages,
  roslib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roscreate";
  pkgFinal = final.noetic.roscreate;
  src = srcs.ros.roscreate;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.rospkg
    roslib
  ];

  colconTestDepends = [
  ];
}
