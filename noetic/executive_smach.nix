{
  catkin,
  smach,
  smach_msgs,
  smach_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "executive_smach";
  pkgFinal = final.noetic.executive_smach;
  src = srcs.executive_smach.executive_smach;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    smach
    smach_msgs
    smach_ros
  ];

  colconTestDepends = [
  ];
}
