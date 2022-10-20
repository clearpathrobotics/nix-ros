{
  catkin,
  roscpp,
  rostest,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdf_geometry_parser";
  pkgFinal = final.noetic.urdf_geometry_parser;
  src = srcs.urdf_geometry_parser.urdf_geometry_parser;

  colconBuildDepends = [
    catkin
    roscpp
    urdf
  ];

  colconRunDepends = [
    roscpp
    urdf
  ];

  colconTestDepends = [
    rostest
    xacro
  ];
}
