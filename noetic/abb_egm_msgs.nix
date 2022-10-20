{
  catkin,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "abb_egm_msgs";
  pkgFinal = final.noetic.abb_egm_msgs;
  src = srcs.abb_robot_driver_interfaces.abb_egm_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    message_runtime
    std_msgs
  ];

  colconRunDepends = [
    message_generation
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
