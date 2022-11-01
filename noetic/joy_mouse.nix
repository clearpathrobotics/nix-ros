{
  catkin,
  pythonPackages,
  rospy,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joy_mouse";
  pkgFinal = final.noetic.joy_mouse;
  src = srcs.jsk_control.joy_mouse;

  colconBuildDepends = [
    catkin
    pythonPackages.pyudev
    rospy
    sensor_msgs
  ];

  colconRunDepends = [
    pythonPackages.pyudev
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
