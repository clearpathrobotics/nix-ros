{
  catkin,
  genmsg,
  rospy,
  rosservice,
  rostest,
  rosunit,
  std_msgs,
  test_rosmaster,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rosservice";
  pkgFinal = final.noetic.test_rosservice;
  src = srcs.ros_comm.test_rosservice;

  colconBuildDepends = [
    catkin
    genmsg
    rostest
    std_msgs
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    rospy
    rosservice
    rosunit
    test_rosmaster
  ];
}
