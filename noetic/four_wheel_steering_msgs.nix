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
  name = "four_wheel_steering_msgs";
  pkgFinal = final.noetic.four_wheel_steering_msgs;
  src = srcs.four_wheel_steering_msgs.four_wheel_steering_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
