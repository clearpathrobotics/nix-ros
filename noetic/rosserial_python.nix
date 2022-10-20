{
  catkin,
  diagnostic_msgs,
  python3Packages,
  rospy,
  rosserial_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_python";
  pkgFinal = final.noetic.rosserial_python;
  src = srcs.rosserial.rosserial_python;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_msgs
    python3Packages.pyserial
    rospy
    rosserial_msgs
  ];

  colconTestDepends = [
  ];
}
