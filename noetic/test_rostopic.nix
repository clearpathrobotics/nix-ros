{
  catkin,
  genmsg,
  genpy,
  rostest,
  rostopic,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "test_rostopic";
  pkgFinal = final.noetic.test_rostopic;
  src = srcs.ros_comm.test_rostopic;

  colconBuildDepends = [
    catkin
    genmsg
    genpy
    rostest
    std_msgs
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    rostopic
  ];
}
