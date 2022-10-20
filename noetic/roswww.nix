{
  catkin,
  python3Packages,
  rosbridge_server,
  rosgraph,
  rospack,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roswww";
  pkgFinal = final.noetic.roswww;
  src = srcs.roswww.roswww;

  colconBuildDepends = [
    catkin
    python3Packages.catkin-pkg
  ];

  colconRunDepends = [
    rosbridge_server
    rosgraph
    rospack
  ];

  colconTestDepends = [
    python3Packages.selenium
    rostest
  ];
}
