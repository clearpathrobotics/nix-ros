{
  catkin,
  cv_bridge,
  dynamic_reconfigure,
  image_transport,
  libogg,
  libtheora,
  message_generation,
  message_runtime,
  pluginlib,
  rosbag,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "theora_image_transport";
  pkgFinal = final.noetic.theora_image_transport;
  src = srcs.image_transport_plugins.theora_image_transport;

  colconBuildDepends = [
    catkin
    cv_bridge
    dynamic_reconfigure
    image_transport
    libogg
    libtheora
    message_generation
    pluginlib
    rosbag
    std_msgs
  ];

  colconRunDepends = [
    cv_bridge
    dynamic_reconfigure
    image_transport
    libogg
    libtheora
    message_runtime
    pluginlib
    rosbag
    std_msgs
  ];

  colconTestDepends = [
  ];
}
