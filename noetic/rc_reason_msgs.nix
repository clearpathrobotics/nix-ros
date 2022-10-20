{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  rc_common_msgs,
  shape_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_reason_msgs";
  pkgFinal = final.noetic.rc_reason_msgs;
  src = srcs.rc_reason_clients.rc_reason_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    rc_common_msgs
    shape_msgs
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    rc_common_msgs
    shape_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
