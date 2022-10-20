{
  boost,
  catkin,
  python3,
  roscpp,
  rosserial_msgs,
  std_msgs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_server";
  pkgFinal = final.noetic.rosserial_server;
  src = srcs.rosserial.rosserial_server;

  colconBuildDepends = [
    boost
    catkin
    python3
    roscpp
    rosserial_msgs
    std_msgs
    topic_tools
  ];

  colconRunDepends = [
    boost
    roscpp
    rosserial_msgs
    std_msgs
    topic_tools
  ];

  colconTestDepends = [
  ];
}
