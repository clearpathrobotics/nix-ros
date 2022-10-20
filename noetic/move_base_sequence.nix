{
  actionlib,
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  move_base_msgs,
  nav_msgs,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "move_base_sequence";
  pkgFinal = final.noetic.move_base_sequence;
  src = srcs.move_base_sequence.move_base_sequence;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    move_base_msgs
    rospy
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    geometry_msgs
    message_runtime
    move_base_msgs
    nav_msgs
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
