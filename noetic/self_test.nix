{
  catkin,
  diagnostic_msgs,
  diagnostic_updater,
  roscpp,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "self_test";
  pkgFinal = final.noetic.self_test;
  src = srcs.diagnostics.self_test;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    diagnostic_updater
    roscpp
    rostest
  ];

  colconRunDepends = [
    diagnostic_msgs
    diagnostic_updater
    roscpp
  ];

  colconTestDepends = [
  ];
}
