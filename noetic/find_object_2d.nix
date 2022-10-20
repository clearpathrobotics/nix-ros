{
  catkin,
  cv_bridge,
  image_transport,
  message_filters,
  message_generation,
  message_runtime,
  qt5,
  roscpp,
  rospy,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "find_object_2d";
  pkgFinal = final.noetic.find_object_2d;
  src = srcs.find_object_2d.find_object_2d;

  colconBuildDepends = [
    catkin
    cv_bridge
    image_transport
    message_filters
    message_generation
    qt5.qtbase
    roscpp
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    cv_bridge
    image_transport
    message_filters
    message_runtime
    qt5.qtbase
    roscpp
    rospy
    sensor_msgs
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
