{
  actionlib,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_actions";
  pkgFinal = final.noetic.mir_actions;
  src = srcs.mir_robot.mir_actions;

  colconBuildDepends = [
    actionlib
    catkin
    geometry_msgs
    message_generation
    nav_msgs
  ];

  colconRunDepends = [
    actionlib
    geometry_msgs
    message_runtime
    nav_msgs
  ];

  colconTestDepends = [
  ];
}
