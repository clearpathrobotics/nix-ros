{
  catkin,
  rosbag_storage,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rosbag_storage";
  pkgFinal = final.noetic.test_rosbag_storage;
  src = srcs.ros_comm.test_rosbag_storage;

  colconBuildDepends = [
    catkin
    rosbag_storage
    std_msgs
  ];

  colconRunDepends = [
    rosbag_storage
    std_msgs
  ];

  colconTestDepends = [
  ];
}
