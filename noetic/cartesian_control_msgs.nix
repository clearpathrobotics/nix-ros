{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cartesian_control_msgs";
  pkgFinal = final.noetic.cartesian_control_msgs;
  src = srcs.cartesian_control_msgs.cartesian_control_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
  ];

  colconTestDepends = [
  ];
}
