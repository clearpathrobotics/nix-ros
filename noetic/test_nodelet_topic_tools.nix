{
  catkin,
  message_filters,
  nodelet,
  nodelet_topic_tools,
  pluginlib,
  roscpp,
  rospy,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_nodelet_topic_tools";
  pkgFinal = final.noetic.test_nodelet_topic_tools;
  src = srcs.nodelet_core.test_nodelet_topic_tools;

  colconBuildDepends = [
    catkin
    message_filters
    nodelet
    nodelet_topic_tools
    pluginlib
    roscpp
    rostest
    std_msgs
  ];

  colconRunDepends = [
    message_filters
    nodelet
    nodelet_topic_tools
    pluginlib
    roscpp
    std_msgs
  ];

  colconTestDepends = [
    rospy
  ];
}
