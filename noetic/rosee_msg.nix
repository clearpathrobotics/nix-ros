{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosee_msg";
  pkgFinal = final.noetic.rosee_msg;
  src = srcs.rosee_msg.rosee_msg;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    roscpp
    rospy
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    actionlib_msgs
    message_generation
    message_runtime
    roscpp
    rospy
  ];

  colconTestDepends = [
  ];
}
