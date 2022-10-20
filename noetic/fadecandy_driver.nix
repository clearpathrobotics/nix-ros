{
  catkin,
  diagnostic_updater,
  fadecandy_msgs,
  libusb1,
  roscpp,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fadecandy_driver";
  pkgFinal = final.noetic.fadecandy_driver;
  src = srcs.fadecandy_ros.fadecandy_driver;

  colconBuildDepends = [
    catkin
    diagnostic_updater
    fadecandy_msgs
    libusb1
    roscpp
  ];

  colconRunDepends = [
    diagnostic_updater
    fadecandy_msgs
    libusb1
    roscpp
  ];

  colconTestDepends = [
    rospy
  ];
}
