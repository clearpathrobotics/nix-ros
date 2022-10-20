{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag_migration_rule";
  pkgFinal = final.noetic.rosbag_migration_rule;
  src = srcs.rosbag_migration_rule.rosbag_migration_rule;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
