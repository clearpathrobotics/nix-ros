{
  actionlib_msgs,
  boost,
  catkin,
  message_generation,
  message_runtime,
  roscpp,
  rosnode,
  rospy,
  rostest,
  rosunit,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "actionlib";
  pkgFinal = final.noetic.actionlib;
  src = srcs.actionlib.actionlib;

  colconBuildDepends = [
    actionlib_msgs
    boost
    catkin
    message_generation
    roscpp
    rospy
    rostest
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    boost
    message_runtime
    roscpp
    rospy
    rostest
    std_msgs
  ];

  colconTestDepends = [
    rosnode
    rosunit
  ];
}
