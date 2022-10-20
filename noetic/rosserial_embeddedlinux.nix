{
  catkin,
  rospy,
  rosserial_client,
  rosserial_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_embeddedlinux";
  pkgFinal = final.noetic.rosserial_embeddedlinux;
  src = srcs.rosserial.rosserial_embeddedlinux;

  colconBuildDepends = [
    catkin
    rosserial_client
  ];

  colconRunDepends = [
    rospy
    rosserial_msgs
  ];

  colconTestDepends = [
  ];
}
