{
  boost,
  catkin,
  cras_cpp_common,
  cras_py_common,
  geometry_msgs,
  nodelet,
  roscpp,
  roslaunch,
  roslint,
  rospy,
  rostest,
  rostopic,
  std_msgs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cras_topic_tools";
  pkgFinal = final.noetic.cras_topic_tools;
  src = srcs.cras_ros_utils.cras_topic_tools;

  colconBuildDepends = [
    boost
    catkin
    cras_cpp_common
    nodelet
    roscpp
    topic_tools
  ];

  colconRunDepends = [
    boost
    cras_cpp_common
    cras_py_common
    nodelet
    roscpp
    rospy
    std_msgs
    topic_tools
  ];

  colconTestDepends = [
    geometry_msgs
    roslaunch
    roslint
    rostest
    rostopic
    std_msgs
  ];
}
