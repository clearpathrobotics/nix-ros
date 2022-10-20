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
  name = "dbw_polaris_msgs";
  pkgFinal = final.noetic.dbw_polaris_msgs;
  src = srcs.dbw_polaris_ros.dbw_polaris_msgs;

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
