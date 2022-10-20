{
  boost,
  catkin,
  cmake_modules,
  eigen,
  kdl_parser,
  nlopt,
  pkg-config,
  roscpp,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "trac_ik_lib";
  pkgFinal = final.noetic.trac_ik_lib;
  src = srcs.trac_ik.trac_ik_lib;

  colconBuildDepends = [
    boost
    catkin
    cmake_modules
    eigen
    kdl_parser
    nlopt
    pkg-config
    roscpp
    urdf
  ];

  colconRunDepends = [
    boost
    kdl_parser
    nlopt
    roscpp
    urdf
  ];

  colconTestDepends = [
  ];
}
