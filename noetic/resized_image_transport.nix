{
  catkin,
  cv_bridge,
  image_transport,
  jsk_recognition_utils,
  jsk_tools,
  jsk_topic_tools,
  message_generation,
  message_runtime,
  nodelet,
  rostest,
  sensor_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "resized_image_transport";
  pkgFinal = final.noetic.resized_image_transport;
  src = srcs.jsk_recognition.resized_image_transport;

  colconBuildDepends = [
    catkin
    cv_bridge
    image_transport
    jsk_topic_tools
    message_generation
    nodelet
    sensor_msgs
    std_srvs
  ];

  colconRunDepends = [
    cv_bridge
    image_transport
    jsk_topic_tools
    message_runtime
    nodelet
    sensor_msgs
    std_srvs
  ];

  colconTestDepends = [
    jsk_recognition_utils
    jsk_tools
    rostest
  ];
}
