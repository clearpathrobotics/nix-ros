{
  catkin,
  cmake_modules,
  orocos-kdl,
  rosconsole,
  roscpp,
  rostest,
  tinyxml,
  tinyxml-2,
  urdf,
  urdfdom-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kdl_parser";
  pkgFinal = final.noetic.kdl_parser;
  src = srcs.kdl_parser.kdl_parser;

  colconBuildDepends = [
    catkin
    cmake_modules
    orocos-kdl
    rosconsole
    tinyxml
    tinyxml-2
    urdf
    urdfdom-headers
  ];

  colconRunDepends = [
    orocos-kdl
    rosconsole
    tinyxml
    tinyxml-2
    urdf
    urdfdom-headers
  ];

  colconTestDepends = [
    roscpp
    rostest
  ];
}
