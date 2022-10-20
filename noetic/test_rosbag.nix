{
  boost,
  bzip2,
  catkin,
  cpp_common,
  genmsg,
  genpy,
  message_generation,
  message_runtime,
  python3Packages,
  rosbag,
  rosconsole,
  roscpp,
  roscpp_serialization,
  rosgraph_msgs,
  roslib,
  rospy,
  rostest,
  rostopic,
  rosunit,
  topic_tools,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rosbag";
  pkgFinal = final.noetic.test_rosbag;
  src = srcs.ros_comm.test_rosbag;

  colconBuildDepends = [
    bzip2
    catkin
    cpp_common
    message_generation
    python3Packages.pillow
    rosbag
    rosconsole
    roscpp
    roscpp_serialization
    rosgraph_msgs
    rostest
    rosunit
    topic_tools
    xmlrpcpp
  ];

  colconRunDepends = [
    rosbag
    rostest
  ];

  colconTestDepends = [
    boost
    genmsg
    genpy
    message_runtime
    python3Packages.rospkg
    roslib
    rospy
    rostopic
  ];
}
