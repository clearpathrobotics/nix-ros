{
  catkin,
  genmsg,
  rosbuild,
  rosgraph,
  rostest,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rosmaster";
  pkgFinal = final.noetic.test_rosmaster;
  src = srcs.ros_comm.test_rosmaster;

  colconBuildDepends = [
    catkin
    genmsg
    rosgraph
    rostest
    std_msgs
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    rosbuild
  ];
}
