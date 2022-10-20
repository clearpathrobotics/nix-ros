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
  name = "turtlebot3_autorace_msgs";
  pkgFinal = final.noetic.turtlebot3_autorace_msgs;
  src = srcs.turtlebot3_autorace_2020.turtlebot3_autorace_msgs;

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
