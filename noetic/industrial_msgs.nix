{
  catkin,
  message_generation,
  message_runtime,
  std_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_msgs";
  pkgFinal = final.noetic.industrial_msgs;
  src = srcs.industrial_core.industrial_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    message_runtime
    std_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
