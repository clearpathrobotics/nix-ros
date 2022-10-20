{
  catkin,
  cob_collision_monitor,
  cob_grasp_generation,
  cob_lookat_action,
  cob_manipulation_msgs,
  cob_moveit_bringup,
  cob_moveit_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_manipulation";
  pkgFinal = final.noetic.cob_manipulation;
  src = srcs.cob_manipulation.cob_manipulation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_collision_monitor
    cob_grasp_generation
    cob_lookat_action
    cob_manipulation_msgs
    cob_moveit_bringup
    cob_moveit_interface
  ];

  colconTestDepends = [
  ];
}
