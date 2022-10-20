{
  catkin,
  diagnostic_updater,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  roscpp,
  self_test,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "driver_base";
  pkgFinal = final.noetic.driver_base;
  src = srcs.driver_common.driver_base;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    dynamic_reconfigure
    message_generation
    roscpp
    self_test
    std_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    dynamic_reconfigure
    message_runtime
    roscpp
    self_test
    std_msgs
  ];

  colconTestDepends = [
  ];
}
