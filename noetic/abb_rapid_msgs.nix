{
  catkin,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "abb_rapid_msgs";
  pkgFinal = final.noetic.abb_rapid_msgs;
  src = srcs.abb_robot_driver_interfaces.abb_rapid_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    message_runtime
  ];

  colconRunDepends = [
    message_generation
    message_runtime
  ];

  colconTestDepends = [
  ];
}
