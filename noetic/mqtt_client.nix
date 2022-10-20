{
  catkin,
  message_generation,
  message_runtime,
  nodelet,
  paho-mqtt-cpp,
  roscpp,
  std_msgs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mqtt_client";
  pkgFinal = final.noetic.mqtt_client;
  src = srcs.mqtt_client.mqtt_client;

  colconBuildDepends = [
    catkin
    message_generation
    nodelet
    paho-mqtt-cpp
    roscpp
    std_msgs
    topic_tools
  ];

  colconRunDepends = [
    message_generation
    message_runtime
    nodelet
    paho-mqtt-cpp
    roscpp
    std_msgs
    topic_tools
  ];

  colconTestDepends = [
  ];
}
