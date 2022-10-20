{
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  nav_2d_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "locomotor_msgs";
  pkgFinal = final.noetic.locomotor_msgs;
  src = srcs.robot_navigation.locomotor_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    message_generation
    nav_2d_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    message_runtime
    nav_2d_msgs
  ];

  colconTestDepends = [
  ];
}
