{
  catkin,
  code_coverage,
  pilz_utils,
  roscpp,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_testutils";
  pkgFinal = final.noetic.pilz_testutils;
  src = srcs.pilz_common.pilz_testutils;

  colconBuildDepends = [
    catkin
    pilz_utils
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    code_coverage
    rostest
  ];
}
