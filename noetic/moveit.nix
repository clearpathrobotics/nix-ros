{
  catkin,
  moveit_commander,
  moveit_core,
  moveit_planners,
  moveit_plugins,
  moveit_ros,
  moveit_setup_assistant,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "moveit";
  pkgFinal = final.noetic.moveit;
  src = srcs.moveit.moveit;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    moveit_commander
    moveit_core
    moveit_planners
    moveit_plugins
    moveit_ros
    moveit_setup_assistant
  ];

  colconTestDepends = [
  ];
}
