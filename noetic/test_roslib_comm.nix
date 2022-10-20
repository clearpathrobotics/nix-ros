{
  catkin,
  genmsg,
  genpy,
  rosbuild,
  rosgraph_msgs,
  roslib,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_roslib_comm";
  pkgFinal = final.noetic.test_roslib_comm;
  src = srcs.ros_comm.test_roslib_comm;

  colconBuildDepends = [
    catkin
    genmsg
    rosgraph_msgs
    std_msgs
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    genpy
    rosbuild
    roslib
    std_srvs
  ];
}
