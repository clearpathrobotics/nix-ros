{
  catkin,
  python3Packages,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdfdom_py";
  pkgFinal = final.noetic.urdfdom_py;
  src = srcs.urdfdom_py.urdfdom_py;

  colconBuildDepends = [
    catkin
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.pyyaml
    rospy
  ];

  colconTestDepends = [
    python3Packages.mock
  ];
}
