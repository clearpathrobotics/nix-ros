{
  catkin,
  geometry_msgs,
  message_runtime,
  nav_msgs,
  rospy,
  rosserial_client,
  rosserial_msgs,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_windows";
  pkgFinal = final.noetic.rosserial_windows;
  src = srcs.rosserial.rosserial_windows;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    rosserial_client
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    rospy
    rosserial_client
    rosserial_msgs
  ];

  colconTestDepends = [
  ];
}
