{
  catkin,
  genmsg,
  python3Packages,
  rosbuild,
  rosgraph,
  rospy,
  rostest,
  rostopic,
  std_msgs,
  test_rosmaster,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rospy";
  pkgFinal = final.noetic.test_rospy;
  src = srcs.ros_comm.test_rospy;

  colconBuildDepends = [
    catkin
    genmsg
    rostest
    std_msgs
    test_rosmaster
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    python3Packages.numpy
    python3Packages.psutil
    rosbuild
    rosgraph
    rospy
    rostopic
  ];
}
