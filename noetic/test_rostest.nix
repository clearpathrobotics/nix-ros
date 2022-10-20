{
  catkin,
  rostest,
  rostopic,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rostest";
  pkgFinal = final.noetic.test_rostest;
  src = srcs.ros_comm.test_rostest;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    rostopic
  ];
}
