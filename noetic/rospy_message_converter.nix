{
  catkin,
  message_generation,
  message_runtime,
  python3Packages,
  roslib,
  rospy,
  rosunit,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rospy_message_converter";
  pkgFinal = final.noetic.rospy_message_converter;
  src = srcs.rospy_message_converter.rospy_message_converter;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    roslib
    rospy
    std_msgs
  ];

  colconTestDepends = [
    python3Packages.numpy
    rosunit
    std_srvs
  ];
}
