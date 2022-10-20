{
  boost,
  catkin,
  roscpp,
  roslint,
  rostest,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "boost_sml";
  pkgFinal = final.noetic.boost_sml;
  src = srcs.boost_sml.boost_sml;

  colconBuildDepends = [
    boost
    catkin
    roscpp
    roslint
  ];

  colconRunDepends = [
    boost
    roscpp
    roslint
  ];

  colconTestDepends = [
    rostest
    rosunit
  ];
}
