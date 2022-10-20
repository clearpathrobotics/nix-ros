{
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_msgs";
  pkgFinal = final.noetic.franka_msgs;
  src = srcs.franka_ros.franka_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
