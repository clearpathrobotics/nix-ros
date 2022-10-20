{
  catkin,
  diagnostic_updater,
  linuxConsoleTools,
  rosbag,
  roscpp,
  roslint,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joy";
  pkgFinal = final.noetic.joy;
  src = srcs.joystick_drivers.joy;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    linuxConsoleTools
    roscpp
    roslint
    sensor_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    linuxConsoleTools
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    rosbag
  ];
}
