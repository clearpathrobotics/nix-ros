{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  rostest,
  tf,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_web_republisher";
  pkgFinal = final.noetic.tf2_web_republisher;
  src = srcs.tf2_web_republisher.tf2_web_republisher;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    roscpp
    tf
    tf2_ros
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_runtime
    roscpp
    tf
    tf2_ros
  ];

  colconTestDepends = [
    rospy
    rostest
  ];
}
