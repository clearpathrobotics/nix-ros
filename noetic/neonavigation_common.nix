{
  catkin,
  roscpp,
  roslint,
  rostest,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "neonavigation_common";
  pkgFinal = final.noetic.neonavigation_common;
  src = srcs.neonavigation.neonavigation_common;

  colconBuildDepends = [
    catkin
    roscpp
  ];

  colconRunDepends = [
    roscpp
  ];

  colconTestDepends = [
    roslint
    rostest
    std_msgs
    std_srvs
  ];
}
