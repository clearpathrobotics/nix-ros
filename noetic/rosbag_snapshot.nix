{
  catkin,
  rosbag,
  rosbag_snapshot_msgs,
  roscpp,
  rosgraph_msgs,
  roslint,
  rospy,
  rostest,
  rostopic,
  std_msgs,
  std_srvs,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag_snapshot";
  pkgFinal = final.noetic.rosbag_snapshot;
  src = srcs.rosbag_snapshot.rosbag_snapshot;

  colconBuildDepends = [
    catkin
    rosbag
    rosbag_snapshot_msgs
    roscpp
    rosgraph_msgs
    std_srvs
    topic_tools
  ];

  colconRunDepends = [
    rosbag
    rosbag_snapshot_msgs
    roscpp
    rosgraph_msgs
    std_srvs
    topic_tools
  ];

  colconTestDepends = [
    roslint
    rospy
    rostest
    rostopic
    std_msgs
  ];
}
