{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "move_base_msgs";
  pkgFinal = final.noetic.move_base_msgs;
  src = srcs.navigation_msgs.move_base_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
