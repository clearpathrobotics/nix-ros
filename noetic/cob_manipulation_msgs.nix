{
  actionlib_msgs,
  catkin,
  message_generation,
  message_runtime,
  moveit_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_manipulation_msgs";
  pkgFinal = final.noetic.cob_manipulation_msgs;
  src = srcs.cob_manipulation.cob_manipulation_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    message_generation
    moveit_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    message_runtime
    moveit_msgs
  ];

  colconTestDepends = [
  ];
}
