{
  catkin,
  rosbash,
  rospy,
  rosserial_msgs,
  rosunit,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_client";
  pkgFinal = final.noetic.rosserial_client;
  src = srcs.rosserial.rosserial_client;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosbash
    rospy
    rosserial_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
    rosserial_msgs
    rosunit
  ];
}
