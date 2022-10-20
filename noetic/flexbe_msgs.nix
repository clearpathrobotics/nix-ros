{
  actionlib,
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_msgs";
  pkgFinal = final.noetic.flexbe_msgs;
  src = srcs.flexbe.flexbe_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    message_generation
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    message_runtime
    rospy
  ];

  colconTestDepends = [
  ];
}
