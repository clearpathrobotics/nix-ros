{
  actionlib,
  catkin,
  roscpp,
  rostest,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "realtime_tools";
  pkgFinal = final.noetic.realtime_tools;
  src = srcs.realtime_tools.realtime_tools;

  colconBuildDepends = [
    catkin
    roscpp
  ];

  colconRunDepends = [
    actionlib
    roscpp
  ];

  colconTestDepends = [
    actionlib
    rostest
    rosunit
  ];
}
