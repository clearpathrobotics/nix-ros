{
  catkin,
  message_generation,
  message_runtime,
  rosbag_migration_rule,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dataspeed_pds_msgs";
  pkgFinal = final.noetic.dataspeed_pds_msgs;
  src = srcs.dataspeed_pds.dataspeed_pds_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    message_runtime
    rosbag_migration_rule
    std_msgs
  ];

  colconTestDepends = [
  ];
}
