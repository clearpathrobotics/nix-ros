{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "computer_status_msgs";
  pkgFinal = final.noetic.computer_status_msgs;
  src = srcs.computer_status_msgs.computer_status_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_generation
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
