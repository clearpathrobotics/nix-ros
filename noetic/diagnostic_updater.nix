{
  catkin,
  diagnostic_msgs,
  roscpp,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diagnostic_updater";
  pkgFinal = final.noetic.diagnostic_updater;
  src = srcs.diagnostics.diagnostic_updater;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    roscpp
    rostest
    std_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
