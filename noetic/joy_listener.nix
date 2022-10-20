{
  catkin,
  roslint,
  rospy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joy_listener";
  pkgFinal = final.noetic.joy_listener;
  src = srcs.wu_ros_tools.joy_listener;

  colconBuildDepends = [
    catkin
    rospy
    sensor_msgs
  ];

  colconRunDepends = [
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
    roslint
  ];
}
