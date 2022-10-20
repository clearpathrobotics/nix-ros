{
  catkin,
  diagnostic_msgs,
  python3Packages,
  rospy,
  rosserial_msgs,
  rosserial_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_xbee";
  pkgFinal = final.noetic.rosserial_xbee;
  src = srcs.rosserial.rosserial_xbee;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_msgs
    python3Packages.pyserial
    rospy
    rosserial_msgs
    rosserial_python
  ];

  colconTestDepends = [
  ];
}
