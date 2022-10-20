{
  catkin,
  code_coverage,
  message_runtime,
  roscpp,
  roslaunch,
  rostest,
  toposens_driver,
  toposens_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens_sync";
  pkgFinal = final.noetic.toposens_sync;
  src = srcs.toposens.toposens_sync;

  colconBuildDepends = [
    catkin
    message_runtime
    roscpp
    toposens_driver
    toposens_msgs
  ];

  colconRunDepends = [
    message_runtime
    roscpp
    toposens_driver
    toposens_msgs
  ];

  colconTestDepends = [
    code_coverage
    roslaunch
    rostest
  ];
}
