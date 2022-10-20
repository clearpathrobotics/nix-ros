{
  actionlib,
  actionlib_msgs,
  catkin,
  rospy,
  rostest,
  rostopic,
  smach,
  smach_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "smach_ros";
  pkgFinal = final.noetic.smach_ros;
  src = srcs.executive_smach.smach_ros;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    rospy
    rostopic
    smach
    smach_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
