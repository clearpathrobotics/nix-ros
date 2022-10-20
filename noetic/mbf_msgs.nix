{
  actionlib_msgs,
  catkin,
  genmsg,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_msgs";
  pkgFinal = final.noetic.mbf_msgs;
  src = srcs.move_base_flex.mbf_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    genmsg
    geometry_msgs
    message_generation
    message_runtime
    nav_msgs
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    nav_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
