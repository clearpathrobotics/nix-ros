{
  catkin,
  cmake_modules,
  message_generation,
  message_runtime,
  poco,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ntpd_driver";
  pkgFinal = final.noetic.ntpd_driver;
  src = srcs.ntpd_driver.ntpd_driver;

  colconBuildDepends = [
    catkin
    cmake_modules
    message_generation
    message_runtime
    poco
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    cmake_modules
    message_generation
    message_runtime
    poco
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
