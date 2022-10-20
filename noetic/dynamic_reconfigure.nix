{
  boost,
  catkin,
  cpp_common,
  message_generation,
  message_runtime,
  roscpp,
  roscpp_serialization,
  roslib,
  rospy,
  rosservice,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamic_reconfigure";
  pkgFinal = final.noetic.dynamic_reconfigure;
  src = srcs.dynamic_reconfigure.dynamic_reconfigure;

  colconBuildDepends = [
    boost
    catkin
    cpp_common
    message_generation
    roscpp
    roscpp_serialization
    rostest
    std_msgs
  ];

  colconRunDepends = [
    boost
    message_runtime
    roscpp
    roslib
    rospy
    rosservice
    std_msgs
  ];

  colconTestDepends = [
  ];
}
