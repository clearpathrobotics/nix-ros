{
  catkin,
  python3Packages,
  roslib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosunit";
  pkgFinal = final.noetic.rosunit;
  src = srcs.ros.rosunit;

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
