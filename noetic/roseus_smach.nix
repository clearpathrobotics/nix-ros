{
  actionlib,
  actionlib_tutorials,
  catkin,
  message_generation,
  message_runtime,
  roseus,
  rostest,
  smach,
  smach_msgs,
  smach_ros,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roseus_smach";
  pkgFinal = final.noetic.roseus_smach;
  src = srcs.jsk_roseus.roseus_smach;

  colconBuildDepends = [
    actionlib
    actionlib_tutorials
    catkin
    message_generation
    roseus
    rostest
    smach
    smach_msgs
    smach_ros
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_tutorials
    message_runtime
    roseus
    rostest
    smach
    smach_msgs
    smach_ros
    std_msgs
  ];

  colconTestDepends = [
  ];
}
