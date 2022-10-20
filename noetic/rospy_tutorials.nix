{
  catkin,
  message_generation,
  message_runtime,
  roscpp_tutorials,
  rospy,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rospy_tutorials";
  pkgFinal = final.noetic.rospy_tutorials;
  src = srcs.ros_tutorials.rospy_tutorials;

  colconBuildDepends = [
    catkin
    message_generation
    rostest
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    rospy
    std_msgs
  ];

  colconTestDepends = [
    roscpp_tutorials
  ];
}
