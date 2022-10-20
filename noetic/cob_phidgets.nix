{
  catkin,
  libphidgets,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_phidgets";
  pkgFinal = final.noetic.cob_phidgets;
  src = srcs.cob_driver.cob_phidgets;

  colconBuildDepends = [
    catkin
    libphidgets
    message_generation
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    libphidgets
    message_runtime
    roscpp
    rospy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
