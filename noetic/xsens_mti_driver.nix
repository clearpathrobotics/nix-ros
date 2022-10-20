{
  catkin,
  diagnostic_updater,
  geometry_msgs,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "xsens_mti_driver";
  pkgFinal = final.noetic.xsens_mti_driver;
  src = srcs.xsens_mti_driver.xsens_mti_driver;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    geometry_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    diagnostic_updater
    geometry_msgs
    roscpp
    sensor_msgs
    std_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
