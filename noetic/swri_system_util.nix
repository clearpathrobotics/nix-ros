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
  name = "swri_system_util";
  pkgFinal = final.noetic.swri_system_util;
  src = srcs.marti_common.swri_system_util;

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
