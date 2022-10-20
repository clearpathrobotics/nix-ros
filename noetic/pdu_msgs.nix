{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  rosbag_migration_rule,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pdu_msgs";
  pkgFinal = final.noetic.pdu_msgs;
  src = srcs.raptor-dbw-ros.pdu_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    rosbag_migration_rule
    std_msgs
  ];

  colconTestDepends = [
  ];
}
