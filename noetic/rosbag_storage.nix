{
  boost,
  bzip2,
  catkin,
  console-bridge,
  cpp_common,
  gpgme,
  openssl,
  pluginlib,
  roscpp_serialization,
  roscpp_traits,
  roslz4,
  rostest,
  rostime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag_storage";
  pkgFinal = final.noetic.rosbag_storage;
  src = srcs.ros_comm.rosbag_storage;

  colconBuildDepends = [
    boost
    bzip2
    catkin
    console-bridge
    cpp_common
    gpgme
    openssl
    pluginlib
    roscpp_serialization
    roscpp_traits
    roslz4
    rostest
    rostime
    std_msgs
  ];

  colconRunDepends = [
    boost
    bzip2
    console-bridge
    cpp_common
    gpgme
    openssl
    pluginlib
    roscpp_serialization
    roscpp_traits
    roslz4
    rostime
  ];

  colconTestDepends = [
  ];
}
