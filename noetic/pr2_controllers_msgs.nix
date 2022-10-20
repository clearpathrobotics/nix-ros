{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_controllers_msgs";
  pkgFinal = final.noetic.pr2_controllers_msgs;
  src = srcs.pr2_controllers.pr2_controllers_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
