{
  catkin,
  dynamixel_sdk,
  libyamlcpp,
  message_generation,
  message_runtime,
  roscpp,
  roslib,
  sensor_msgs,
  setserial,
  std_msgs,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamixel_interface";
  pkgFinal = final.noetic.dynamixel_interface;
  src = srcs.dynamixel_interface.dynamixel_interface;

  colconBuildDepends = [
    catkin
    dynamixel_sdk
    libyamlcpp
    message_generation
    message_runtime
    roscpp
    roslib
    sensor_msgs
    setserial
    std_msgs
    xmlrpcpp
  ];

  colconRunDepends = [
    dynamixel_sdk
    libyamlcpp
    message_generation
    message_runtime
    roscpp
    roslib
    sensor_msgs
    setserial
    std_msgs
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
