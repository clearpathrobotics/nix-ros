{
  catkin,
  rospy,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "joint_state_publisher";
  pkgFinal = final.noetic.joint_state_publisher;
  src = srcs.joint_state_publisher.joint_state_publisher;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
