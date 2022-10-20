{
  catkin,
  message_generation,
  message_runtime,
  roslint,
  rosunit,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "network_interface";
  pkgFinal = final.noetic.network_interface;
  src = srcs.network_interface.network_interface;

  colconBuildDepends = [
    catkin
    message_generation
    roslint
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
    rosunit
  ];
}
