{
  catkin,
  cpp_common,
  message_generation,
  message_runtime,
  rosbash,
  rosconsole,
  roscpp,
  rostest,
  rostime,
  rosunit,
  std_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "topic_tools";
  pkgFinal = final.noetic.topic_tools;
  src = srcs.ros_comm.topic_tools;

  colconBuildDepends = [
    catkin
    cpp_common
    message_generation
    rosconsole
    roscpp
    rostest
    rostime
    rosunit
    std_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    message_runtime
    rosconsole
    roscpp
    rostime
    std_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
    rosbash
  ];
}
