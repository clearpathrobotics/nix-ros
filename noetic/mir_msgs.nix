{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_msgs";
  pkgFinal = final.noetic.mir_msgs;
  src = srcs.mir_robot.mir_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
