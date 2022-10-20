{
  catkin,
  diagnostic_updater,
  roscpp,
  self_test,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lsc_ros_driver";
  pkgFinal = final.noetic.lsc_ros_driver;
  src = srcs.lsc_ros_driver.lsc_ros_driver;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    roscpp
    self_test
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
