{
  boost,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  qt5,
  rosconsole,
  roscpp,
  roscpp_serialization,
  roslib,
  rostime,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlesim";
  pkgFinal = final.noetic.turtlesim;
  src = srcs.ros_tutorials.turtlesim;

  colconBuildDepends = [
    boost
    catkin
    geometry_msgs
    message_generation
    qt5.qtbase
    rosconsole
    roscpp
    roscpp_serialization
    roslib
    rostime
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    boost
    geometry_msgs
    message_runtime
    qt5.qtbase
    rosconsole
    roscpp
    roscpp_serialization
    roslib
    rostime
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
