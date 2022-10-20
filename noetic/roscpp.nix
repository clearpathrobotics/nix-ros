{
  boost,
  catkin,
  cpp_common,
  message_generation,
  message_runtime,
  pkg-config,
  rosconsole,
  roscpp_serialization,
  roscpp_traits,
  rosgraph_msgs,
  roslang,
  rostime,
  std_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roscpp";
  pkgFinal = final.noetic.roscpp;
  src = srcs.ros_comm.roscpp;

  colconBuildDepends = [
    boost
    catkin
    cpp_common
    message_generation
    pkg-config
    rosconsole
    roscpp_serialization
    roscpp_traits
    rosgraph_msgs
    roslang
    rostime
    std_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    boost
    cpp_common
    message_runtime
    rosconsole
    roscpp_serialization
    roscpp_traits
    rosgraph_msgs
    rostime
    std_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
