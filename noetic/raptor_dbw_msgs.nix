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
  name = "raptor_dbw_msgs";
  pkgFinal = final.noetic.raptor_dbw_msgs;
  src = srcs.raptor-dbw-ros.raptor_dbw_msgs;

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
