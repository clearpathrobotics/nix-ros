{
  boost,
  catkin,
  roscpp,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_math_util";
  pkgFinal = final.noetic.swri_math_util;
  src = srcs.marti_common.swri_math_util;

  colconBuildDepends = [
    boost
    catkin
    roscpp
  ];

  colconRunDepends = [
    boost
    roscpp
  ];

  colconTestDepends = [
    rostest
  ];
}
