{
  catkin,
  cpp_common,
  message_generation,
  message_runtime,
  pkg-config,
  rosconsole,
  roscpp,
  roscpp_serialization,
  roscpp_traits,
  rosgraph_msgs,
  roslang,
  rostest,
  rostime,
  rosunit,
  std_msgs,
  std_srvs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_roscpp";
  pkgFinal = final.noetic.test_roscpp;
  src = srcs.ros_comm.test_roscpp;

  colconBuildDepends = [
    catkin
    cpp_common
    message_generation
    pkg-config
    rosconsole
    roscpp
    roscpp_serialization
    roscpp_traits
    rosgraph_msgs
    roslang
    rostest
    rostime
    rosunit
    std_msgs
    std_srvs
    xmlrpcpp
  ];

  colconRunDepends = [
    message_runtime
    rosconsole
    rosgraph_msgs
    std_msgs
    std_srvs
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
