{
  arduino,
  catkin,
  message_generation,
  message_runtime,
  rospy,
  rosserial_client,
  rosserial_msgs,
  rosserial_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_arduino";
  pkgFinal = final.noetic.rosserial_arduino;
  src = srcs.rosserial.rosserial_arduino;

  colconBuildDepends = [
    catkin
    message_generation
  ];

  colconRunDepends = [
    arduino
    message_runtime
    rospy
    rosserial_client
    rosserial_msgs
    rosserial_python
  ];

  colconTestDepends = [
  ];
}
