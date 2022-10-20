{
  catkin,
  message_filters,
  pluginlib,
  rosconsole,
  roscpp,
  roslib,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_transport";
  pkgFinal = final.noetic.image_transport;
  src = srcs.image_common.image_transport;

  colconBuildDepends = [
    catkin
    message_filters
    pluginlib
    rosconsole
    roscpp
    roslib
    sensor_msgs
  ];

  colconRunDepends = [
    message_filters
    pluginlib
    rosconsole
    roscpp
    roslib
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
