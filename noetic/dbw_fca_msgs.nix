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
  name = "dbw_fca_msgs";
  pkgFinal = final.noetic.dbw_fca_msgs;
  src = srcs.dbw_fca_ros.dbw_fca_msgs;

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
