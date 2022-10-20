{
  catkin,
  message_generation,
  message_runtime,
  rosgraph_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag_snapshot_msgs";
  pkgFinal = final.noetic.rosbag_snapshot_msgs;
  src = srcs.rosbag_snapshot.rosbag_snapshot_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    rosgraph_msgs
  ];

  colconRunDepends = [
    message_runtime
    rosgraph_msgs
  ];

  colconTestDepends = [
  ];
}
