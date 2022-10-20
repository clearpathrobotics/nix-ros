{
  catkin,
  diagnostic_msgs,
  rospy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laptop_battery_monitor";
  pkgFinal = final.noetic.laptop_battery_monitor;
  src = srcs.linux_peripheral_interfaces.laptop_battery_monitor;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    sensor_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
