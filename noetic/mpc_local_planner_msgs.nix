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
  name = "mpc_local_planner_msgs";
  pkgFinal = final.noetic.mpc_local_planner_msgs;
  src = srcs.mpc_local_planner.mpc_local_planner_msgs;

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
