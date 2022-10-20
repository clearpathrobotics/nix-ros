{
  catkin,
  rosbag,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "remote_rosbag_record";
  pkgFinal = final.noetic.remote_rosbag_record;
  src = srcs.remote_rosbag_record.remote_rosbag_record;

  colconBuildDepends = [
    catkin
    rosbag
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    rosbag
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
