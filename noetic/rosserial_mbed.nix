{
  catkin,
  message_generation,
  message_runtime,
  rospy,
  rosserial_client,
  rosserial_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_mbed";
  pkgFinal = final.noetic.rosserial_mbed;
  src = srcs.rosserial.rosserial_mbed;

  colconBuildDepends = [
    catkin
    message_generation
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
