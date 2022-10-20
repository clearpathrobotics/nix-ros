{
  catkin,
  python3Packages,
  rostest,
  urdfdom_py,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kdl_parser_py";
  pkgFinal = final.noetic.kdl_parser_py;
  src = srcs.kdl_parser.kdl_parser_py;

  colconBuildDepends = [
    catkin
    python3Packages.catkin-pkg
    python3Packages.setuptools
  ];

  colconRunDepends = [
    python3Packages.pykdl
    urdfdom_py
  ];

  colconTestDepends = [
    rostest
  ];
}
