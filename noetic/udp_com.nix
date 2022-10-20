{
  catkin,
  message_generation,
  message_runtime,
  nodelet,
  roscpp,
  roslint,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "udp_com";
  pkgFinal = final.noetic.udp_com;
  src = srcs.udp_com.udp_com;

  colconBuildDepends = [
    catkin
    message_generation
    nodelet
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    message_generation
    message_runtime
    nodelet
    roscpp
    std_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
