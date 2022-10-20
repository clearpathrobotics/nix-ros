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
  name = "robot_controllers_msgs";
  pkgFinal = final.noetic.robot_controllers_msgs;
  src = srcs.robot_controllers.robot_controllers_msgs;

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
