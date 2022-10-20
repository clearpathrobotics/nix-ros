{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_filters,
  roscpp,
  rosgraph,
  rospy,
  rostest,
  std_msgs,
  tf2,
  tf2_msgs,
  tf2_py,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tf2_ros";
  pkgFinal = final.noetic.tf2_ros;
  src = srcs.geometry2.tf2_ros;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    message_filters
    roscpp
    rosgraph
    rospy
    std_msgs
    tf2
    tf2_msgs
    tf2_py
    xmlrpcpp
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_filters
    roscpp
    rosgraph
    rospy
    std_msgs
    tf2
    tf2_msgs
    tf2_py
    xmlrpcpp
  ];

  colconTestDepends = [
    rostest
  ];
}
