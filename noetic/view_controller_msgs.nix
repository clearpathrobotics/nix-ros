{
  catkin,
  genmsg,
  geometry_msgs,
  message_generation,
  message_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "view_controller_msgs";
  pkgFinal = final.noetic.view_controller_msgs;
  src = srcs.view_controller_msgs.view_controller_msgs;

  colconBuildDepends = [
    catkin
    genmsg
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
  ];
}
