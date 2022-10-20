{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "toposens_msgs";
  pkgFinal = final.noetic.toposens_msgs;
  src = srcs.toposens.toposens_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    message_runtime
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_generation
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
