{
  abb_rapid_msgs,
  catkin,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "abb_rapid_sm_addin_msgs";
  pkgFinal = final.noetic.abb_rapid_sm_addin_msgs;
  src = srcs.abb_robot_driver_interfaces.abb_rapid_sm_addin_msgs;

  colconBuildDepends = [
    abb_rapid_msgs
    catkin
    message_generation
    message_runtime
    std_msgs
  ];

  colconRunDepends = [
    abb_rapid_msgs
    message_generation
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
