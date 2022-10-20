{
  catkin,
  moveit_commander,
  moveit_core,
  moveit_msgs,
  tf2_eigen,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_industrial_motion_planner_testutils";
  pkgFinal = final.noetic.pilz_industrial_motion_planner_testutils;
  src = srcs.moveit.pilz_industrial_motion_planner_testutils;

  colconBuildDepends = [
    catkin
    moveit_core
    moveit_msgs
    tf2_eigen
  ];

  colconRunDepends = [
    moveit_commander
    moveit_core
    moveit_msgs
  ];

  colconTestDepends = [
  ];
}
