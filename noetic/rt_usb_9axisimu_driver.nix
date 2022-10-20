{
  catkin,
  roscpp,
  roslint,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rt_usb_9axisimu_driver";
  pkgFinal = final.noetic.rt_usb_9axisimu_driver;
  src = srcs.rt_usb_9axisimu_driver.rt_usb_9axisimu_driver;

  colconBuildDepends = [
    catkin
    roscpp
    roslint
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    roscpp
    roslint
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
