{
  boost,
  catkin,
  message_generation,
  message_runtime,
  rosconsole,
  roscpp,
  roscpp_serialization,
  rostime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roscpp_tutorials";
  pkgFinal = final.noetic.roscpp_tutorials;
  src = srcs.ros_tutorials.roscpp_tutorials;

  colconBuildDepends = [
    boost
    catkin
    message_generation
    rosconsole
    roscpp
    roscpp_serialization
    rostime
    std_msgs
  ];

  colconRunDepends = [
    boost
    message_runtime
    rosconsole
    roscpp
    roscpp_serialization
    rostime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
