{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "control_msgs";
  pkgFinal = final.noetic.control_msgs;
  src = srcs.control_msgs.control_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    std_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    std_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
